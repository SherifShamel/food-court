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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: ApplicationThemeManager.theme.textTheme.bodyLarge!.copyWith(
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
              child: Text(
                "الصورة غير متوفرة حاليا",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            );
          }

          var data = snapshot.data;
          return ListView.builder(
            itemBuilder: (context, index) => MealWidget(
              mealModel: data[index],
            ),
            itemCount: data!.length,
          );
        },
      ),
    );
  }
}
