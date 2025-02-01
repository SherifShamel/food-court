import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/main.dart';
import 'package:food_court/presentation/features/category_feature/pages/category_screen.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<QueryDocumentSnapshot> data = [];

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("allMeals").get();
    var mealsStatus = data.addAll(querySnapshot.docs);
    return mealsStatus;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text("Something went wrong!"));
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) => Center(
            child: SizedBox(
              width: 130,
              height: 100,
              child: TextButton(
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    CircleBorder(),
                  ),
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    ApplicationThemeManager.myGreenBackground,
                  ),
                ),
                onPressed: () {
                  navigatorKey.currentState!.push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => CategoryScreen(
                        category: data[index]["status"],
                        categoryId: data[index].id,
                      ),
                    ),
                  );
                },
                child: Text(
                  "${data[index]["status"]}",
                  style: ApplicationThemeManager.theme.textTheme.bodySmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        );
      },
    );

    /* Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Center(
              child: SizedBox(
                width: 130,
                height: 100,
                child: TextButton(
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      CircleBorder(),
                    ),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      ApplicationThemeManager.myGreenBackground,
                    ),
                  ),
                  onPressed: () {
                    navigatorKey.currentState!.push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => CategoryScreen(
                          category: data[index]["status"],
                          categoryId: data[index].id,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "${data[index]["status"]}",
                    style: TextStyle(
                      color: ApplicationThemeManager.theme.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        */

    /*FloatingActionButton(
          onPressed: () {
            setCategories();
          },
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
            child: const Text("Add New!"),
          ),
        ),*/

    /*BlocBuilder<MealViewModel, MealsStates>(
      bloc: vm,
      builder: (context, state) {
        switch (state) {
          case LoadingState():
            {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          case ErrorState():
            {
              return Center(
                child: Text(state.errorMessage),
              );
            }
          case SuccessMealState():
            {
              var data = state.mealEntity;

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => Center(
                  child: RawDoneButton(
                    mealName: data[index].status,
                  ),
                ),
              );
            }
        }
      },
    );*/
  }
}

// class RawDoneButton extends StatelessWidget {
//   final String mealName;
//
//   const RawDoneButton({
//     required this.mealName,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 130,
//       height: 100,
//       child: TextButton(
//         style: const ButtonStyle(
//           shape: MaterialStatePropertyAll(
//             CircleBorder(),
//           ),
//           padding: MaterialStatePropertyAll(
//             EdgeInsets.symmetric(vertical: 18, horizontal: 35),
//           ),
//           backgroundColor: MaterialStatePropertyAll(
//             ApplicationThemeManager.myGreenBackground,
//           ),
//         ),
//         onPressed: () {
//           navigatorKey.currentState!.push(
//             MaterialPageRoute(
//               builder: (BuildContext context) =>
//                   CategoryScreen(category: mealName),
//             ),
//           );
//         },
//         child: Text(
//           mealName,
//           style: TextStyle(
//             color: ApplicationThemeManager.theme.primaryColor,
//           ),
//         ),
//       ),
//     );
//   }
// }
