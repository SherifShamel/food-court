import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/domain/entity/meal_entity.dart';
import 'package:food_court/firebase/firebase_utils.dart';
import 'package:food_court/model/meal_model.dart';

import '../../category_feature/widgets/category_widget.dart';

class CategoryScreen extends StatefulWidget {
  final String category;
  final String categoryId;

  const CategoryScreen({
    required this.category,
    required this.categoryId,
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<QueryDocumentSnapshot> subCategoryData = [];

  getSubCategories() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("allMeals")
        .doc(widget.categoryId)
        .collection("done")
        .get();
    subCategoryData.addAll(querySnapshot.docs);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.category,
            style: TextStyle(
              color: ApplicationThemeManager.theme.primaryColor,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: getSubCategories(),
                builder: (context, snapshot) {
                  // print(subCategoryData.length);
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  var data = subCategoryData;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      // gridDelegate:
                      //     const SliverGridDelegateWithFixedCrossAxisCount(
                      //   childAspectRatio: 5 / 6,
                      //   crossAxisCount: 2,
                      //   crossAxisSpacing: 10,
                      //   mainAxisSpacing: 10,
                      // ),
                      itemBuilder: (context, index) {
                        // print(data[index].id);

                        return CategoryWidget(
                          statusId: widget.categoryId,
                          mealCategoryId: data[index].id,
                          mealCategory: data[index]["mealCategory"],
                          mealImage: data[index]["mealImage"],
                        );
                        // Text(data[index]["status"]);
                      },
                    ),
                  );
                },
              )
              // BlocBuilder<MealViewModel, MealsStates>(
              //   bloc: vm,
              //   builder: (context, state) {
              //     switch (state) {
              //       case LoadingState():
              //         {
              //           return const Center(child: CircularProgressIndicator());
              //         }
              //       case ErrorState():
              //         {
              //           return Center(
              //             child: Center(
              //               child: Text(state.errorMessage),
              //             ),
              //           );
              //         }
              //       case SuccessMealState():
              //           {
              //             var data = state.mealEntity;
              //             return Expanded(
              //               child: GridView.builder(
              //                 itemCount: data.length,
              //                 gridDelegate:
              //                     const SliverGridDelegateWithFixedCrossAxisCount(
              //                   childAspectRatio: 5 / 6,
              //                   crossAxisCount: 2,
              //                   crossAxisSpacing: 10,
              //                   mainAxisSpacing: 10,
              //                 ),
              //                 itemBuilder: (context, index) =>
              //                     CategoryWidget(categoryData: data[index]),
              //               ),
              //             );
              //           }
              //       }
              //     },
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
