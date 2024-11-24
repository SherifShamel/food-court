import 'package:flutter/material.dart';
import 'package:food_court/firebase/firebase_utils.dart';
import 'package:food_court/model/meal_model.dart';
import 'package:food_court/presentation/features/meals_feature/widgets/meal_widget.dart';

import '../../../../core/config/application_theme_manager/theme_manager.dart';

class MealsScreen extends StatefulWidget {
  final String statusId, categoryId;
  final String title;

  const MealsScreen({
    required this.title,
    super.key,
    required this.statusId,
    required this.categoryId,
  });

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  // List<QueryDocumentSnapshot> subCategoryData = [];
  //
  // getMeals() async {
  //   QuerySnapshot querySnapshot = await FirebaseFirestore.instance
  //       .collection("allMeals")
  //       .doc(widget.statusId)
  //       .collection("done")
  //       .doc(widget.categoryId)
  //       .collection("mealCategory")
  //       .get();
  //   subCategoryData.addAll(querySnapshot.docs);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: ApplicationThemeManager.theme.primaryColor,
          ),
        ),
      ),
      body: FutureBuilder<List<MealModel>>(
        future: FirebaseUtils.getData(widget.statusId, widget.categoryId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }
          if (snapshot.data!.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Oh uh!..",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "it seems like there is no data here yet...",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          }

          var data = snapshot.data;
          return ListView.builder(
            itemBuilder: (context, index) => MealWidget(
              mealModel: data[index],
            ),
            /*Column(
              children: [
                Image.network(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  data[index].mealImage,
                  fit: BoxFit.fill,
                ),
                Row(
                  children: [
                    Text(
                      data[index].mealName,
                    ),
                    Text(
                      data[index].mealPrice.toString(),
                    ),
                  ],
                ),
              ],
            ),*/
            itemCount: data!.length,
          );
        },
      ),
    );
  }
}
