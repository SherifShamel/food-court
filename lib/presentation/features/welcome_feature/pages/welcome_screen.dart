import 'package:flutter/material.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';
import 'package:food_court/core/config/utils/size_config.dart';
import 'package:food_court/core/providers/my_shared_prefs.dart';
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

  void submit(){
    MySharedPrefs.saveData(key: 'welcomeScreen', value: true).then((value) {
      if(value) {
        navigatorKey.currentState
          ?.pushReplacementNamed(PageRouteNames.layout);
      }
    });
  }
  void skipPage(){
        navigatorKey.currentState
            ?.pushReplacementNamed(PageRouteNames.layout);

  }

  @override
  Widget build(BuildContext context) {

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
                onTap: skipPage,
                child: const Text(
                  "تخطي",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF898989),
                  ),
                ),
              ),
            ),

          ),
          Visibility(
            visible: pageController!.hasClients
                ? (pageController?.page == 3 ? false : true)
                : true,
            child: Positioned(
              top: SizeConfig.defaultSize! * 10,
              left: 30,
              child: InkWell(
                onTap: submit,
                child: const Text(
                  "تخطي للابد",
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
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                } else {
                  skipPage();
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? "ابدا" : "التالي")
                  : "التالي",
            ),
          ),
        ],
      ),
    );
  }
}
