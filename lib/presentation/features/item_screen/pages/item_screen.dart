// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:food_court/domain/entity/meal_entity.dart';
// import 'package:food_court/firebase/firebase_utils.dart';
// import 'package:food_court/presentation/features/item_screen/widgets/item_widget.dart';
//
// import '../../../../model/meal_model.dart';
//
// class ItemScreen extends StatefulWidget {
//   final String docId;
//   final MealModel mealModel;
//
//   const ItemScreen({required this.docId, super.key, required this.mealModel});
//
//   @override
//   State<ItemScreen> createState() => _ItemScreenState();
// }
//
// class _ItemScreenState extends State<ItemScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.favorite_border,
//               ),
//             )
//           ],
//         ),
//         body: FutureBuilder(
//           future:
//               FirebaseUtils.getOneTimeReadCategoryFromFirestore(widget.docId),
//           builder: (context, snapshot) {
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text(snapshot.error.toString()),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//
//             print(snapshot.data!.length);
//             return ListView.builder(
//               itemCount: snapshot.data?.length,
//               itemBuilder: (context, index) => Text(widget.mealModel.mealName),
//             );
//           },
//         ));
//   }
// }
