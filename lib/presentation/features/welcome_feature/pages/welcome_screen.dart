import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';
import 'package:food_court/core/config/utils/size_config.dart';
import 'package:food_court/core/constants.dart';
import 'package:food_court/core/widgets/custom_buttons.dart';
import 'package:food_court/main.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/custom_indicator.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/custom_page_view.dart';

class WelcomeScreenBody extends StatefulWidget {
  const WelcomeScreenBody({super.key});

  @override
  State<WelcomeScreenBody> createState() => _WelcomeScreenBodyState();
}

class _WelcomeScreenBodyState extends State<WelcomeScreenBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(pageController!.page);
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(
            pageController: pageController,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defaultSize! * 22,
            child: CustomIndicator(
                dotIndex:
                    pageController!.hasClients ? pageController!.page : 0),
          ),
          Visibility(
            visible: pageController!.hasClients
                ? (pageController?.page == 3 ? false : true)
                : true,
            child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              right: 30,
              child: InkWell(
                onTap: () {
                  navigatorKey.currentState
                      ?.pushReplacementNamed(PageRouteNames.layout);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF898989),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 8,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 3) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                } else {
                  navigatorKey.currentState
                      ?.pushReplacementNamed(PageRouteNames.layout);
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 3 ? "Get Started" : "Next")
                  : "Next",
            ),
          ),
        ],
      ),
    );
  }
}
