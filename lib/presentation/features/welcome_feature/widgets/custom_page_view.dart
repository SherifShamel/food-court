import 'package:flutter/material.dart';
import 'package:food_court/generated/assets.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          title: "Hello1",
          description: "HELLO HELLO1",
          image: Assets.imgChoose,
        ),
        PageViewItem(
          title: "Hello2",
          description: "HELLO HELLO2",
          image: Assets.imgApps,
        ),
        PageViewItem(
          title: "Hello3",
          description: "HELLO HELLO3",
          image: Assets.imgHeart,
        ),
        PageViewItem(
          title: "Hello4",
          description: "HELLO HELLO4",
          image: Assets.imgFinaly,
        ),
      ],
    );
  }
}
