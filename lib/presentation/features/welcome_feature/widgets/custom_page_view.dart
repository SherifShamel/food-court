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
          title: "!أهلا",
          description: "!كسبنا عميل النهاردة",
          image: Assets.imgChoose,
        ),
        PageViewItem(
          title: "أطلب قبلها بيومين",
          description: "أطلب أي أوردر قبلها بيومين عشان نلحق نجهزه",
          image: Assets.imgApps,
        ),
        PageViewItem(
          title: "اضف إلى السلة",
          description:
              "ممكن تضيف أي وجبة إلى السلة",
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
