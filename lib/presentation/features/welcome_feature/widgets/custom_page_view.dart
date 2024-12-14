import 'package:flutter/material.dart';
import 'package:food_court/generated/assets.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({required this.pageController, super.key});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title: "Welcome",
          description: "We have gained a great customer today!",
          image: Assets.imgChoose,
        ),
        PageViewItem(
          title: "Order Before 2 Days",
          description: "For Any Order You Have to Order 2 Days before",
          image: Assets.imgApps,
        ),
        PageViewItem(
          title: "Add To Favourites",
          description:
              "You Can Add Your Favourite Meals To The Favourites Section",
          image: Assets.imgHeart,
        ),
        // PageViewItem(
        //   title: "Hello4",
        //   description: "HELLO HELLO4",
        //   image: Assets.imgFinaly,
        // ),
      ],
    );
  }
}
