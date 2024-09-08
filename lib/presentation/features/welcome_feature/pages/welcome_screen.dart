import 'package:flutter/material.dart';
import 'package:food_court/core/config/utils/size_config.dart';
import 'package:food_court/core/widgets/custom_buttons.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/custom_page_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/config/routes/page_route_names.dart';
import '../../../../main.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          const CustomPageView(),
          Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 30,
            child: const Text(
              "Skip",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF898989),
              ),
            ),
          ),

          Positioned(
            bottom: SizeConfig.defaultSize! * 5,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: const CustomGeneralButton(
              text: "Next",
            ),
          ),
        ],
      ),
    );
  }
}
