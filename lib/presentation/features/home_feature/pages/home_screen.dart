import 'package:flutter/material.dart';
import 'package:food_court/presentation/features/home_feature/widgets/home_body.dart';
import 'package:food_court/presentation/features/home_feature/widgets/my_custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool typing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Matba5 Rannem"),
        ),
        drawer: const MyCustomDrawer(),
        body: const HomeBody()
        /*SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Recipes",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        "See all",
                        style:
                            TextStyle(color: ApplicationThemeManager.myPurple),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ],
              ),
              const CarouselItemWidget(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          navigatorKey.currentState
                              ?.pushNamed(PageRouteNames.categoryScreen);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              color: ApplicationThemeManager.myPurple),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const AvatarWidget(
                image: AssetImage("assets/menu_images/IMG-20240815-WA0006.jpg"),
                mealName: 'Mashweyat',
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          navigatorKey.currentState
                              ?.pushNamed(PageRouteNames.categoryScreen);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                              color: ApplicationThemeManager.myPurple),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const AvatarWidget(
                image: AssetImage("assets/menu_images/IMG-20240815-WA0004.jpg"),
                mealName: 'Sambousa',
              ),
            ],
          ),
        ),
      ),*/
        );
  }
}