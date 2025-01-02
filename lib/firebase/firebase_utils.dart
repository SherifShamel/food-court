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

// getting the categories
  static List<QueryDocumentSnapshot> categories = [];

  static getCategories() async {
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection("allMeals").get();
    var mealsStatus = categories.addAll(querySnapshot.docs);
    return mealsStatus;
  }

  //getting the subCategories
  static List<QueryDocumentSnapshot> subCategoryData = [];

  static getSubCategories(String categoryId) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("allMeals")
        .doc(categoryId)
        .collection("done")
        .get();
    subCategoryData.addAll(querySnapshot.docs);
  }

}
