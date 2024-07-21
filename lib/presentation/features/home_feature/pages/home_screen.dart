import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';

import '../../../../main.dart';
import '../widgets/avatar_widget.dart';
import '../widgets/carousel_item_widget.dart';

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
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              CarouselItemWidget(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              AvatarWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              AvatarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
