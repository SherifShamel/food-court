import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';

import '../../../../main.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/carousel_item_widget.dart' show CarouselItemWidget;

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
        title: typing
            ? TextFormField()
            : Text(
                "Meals App",
                style: TextStyle(
                  color: ApplicationThemeManager.theme.primaryColor,
                ),
              ),
        leading: IconButton(
          icon: Icon(typing ? Icons.done : Icons.search),
          onPressed: () {
            setState(() {
              typing = !typing;
            });
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                navigatorKey.currentState!.pushNamed(PageRouteNames.filter);
              },
              icon: const Icon(Icons.filter_alt_outlined)),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
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
              CarouselItemWidget(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
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
              SizedBox(height: 5),
              AvatarWidget(
                image: AssetImage("assets/menu_images/IMG-20240815-WA0006.jpg"),
                mealName: 'Mashweyat',
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
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
              SizedBox(height: 5),
              AvatarWidget(
                image: AssetImage("assets/menu_images/IMG-20240815-WA0004.jpg"),
                mealName: 'Sambousa',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
