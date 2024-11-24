// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:food_court/model/meal_model.dart';
//
// class FirebaseUtils {
//   List<QueryDocumentSnapshot> data = [];
//
//   static CollectionReference<MealModel> getCollectionRef() {
//     return FirebaseFirestore.instance
//         .collection("allMeals")
//         .withConverter<MealModel>(
//       fromFirestore: (snapshot, _) => MealModel.fromJson(snapshot.data()!),
//       toFirestore: (mealModel, _) => mealModel.toJson(),
//     );
//   }
//
//   static Future<List<MealModel>> getOneTimeReadFromFirestore() async {
//     var collectionRef = getCollectionRef();
//     var data = await collectionRef.get();
//     var allMeals = data.docs.map((e) => e.data()).toList();
//     return allMeals;
//   }
//
//   static CollectionReference<MealModel> getCollectionCategoryRef(String docId) {
//     return FirebaseFirestore.instance
//         .collection("categories")
//         .doc(docId)
//         .collection("subCategory")
//         .withConverter<MealModel>(
//       fromFirestore: (snapshot, _) => MealModel.fromJson(snapshot.data()!),
//       toFirestore: (mealModel, _) => mealModel.toJson(),
//     );
//   }
//
//   static Future<List<MealModel>> getOneTimeReadCategoryFromFirestore(
//       String docId) async {
//     var collectionRef = getCollectionCategoryRef(docId);
//     var data = await collectionRef.get();
//     var allMeals = data.docs.map((e) => e.data()).toList();
//     return allMeals;
//   }
//
//   // static List<QueryDocumentSnapshot> dataa = [];
//   //
//   // static getCategories() async {
//   //   QuerySnapshot querySnapshot =
//   //       await FirebaseFirestore.instance.collection("categories").get();
//   //   dataa.addAll(querySnapshot.docs);
//   // }
//
//   // static List<QueryDocumentSnapshot> subCategoryData = [];
//   //
//   // static getSubCategories(String subCategoryId) async {
//   //   QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//   //       .collection("categories")
//   //       .doc(subCategoryId)
//   //       .collection("subCategory")
//   //       .get();
//   //   subCategoryData.addAll(querySnapshot.docs);
//   // }
//
//
//   static List<QueryDocumentSnapshot> subCategoryData = [];
//
//   static getMeals(String statusId, String categoryId) async {
//     QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//         .collection("allMeals")
//         .doc(statusId)
//         .collection("done")
//         .doc(categoryId)
//         .collection("mealCategory")
//         .get();
//     subCategoryData.addAll(querySnapshot.docs);
//   }
//
//
//   static List<QueryDocumentSnapshot> dataTest = [];
//
//   // static getCategoriesTest() async {
//   //   QuerySnapshot querySnapshot =
//   //   await FirebaseFirestore.instance.collection("allMeals").get();
//   //
//   //   //try this code !!
//   //
//   //   var myData = dataTest.addAll(querySnapshot.docs);
//   //   return myData;
//   // }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_court/model/meal_model.dart';

class FirebaseUtils {
  static CollectionReference<MealModel> getCollectionRef(
      String statusId, String categoryId) {
    return FirebaseFirestore.instance
        .collection("allMeals")
        .doc(statusId)
        .collection("done")
        .doc(categoryId)
        .collection("mealCategory")
        .withConverter<MealModel>(
          fromFirestore: (snapshot, _) => MealModel.fromJson(snapshot.data()!),
          toFirestore: (mealModel, _) => mealModel.toJson(),
        );
  }

  static Future<List<MealModel>> getData(
      String statusId, String categoryId) async {
    var collectionRef = getCollectionRef(statusId, categoryId);
    var data = await collectionRef.get();
    var meals = data.docs.map((e) => e.data()).toList();

    return meals;
  }


}
