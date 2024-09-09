import 'package:flutter/material.dart';
import 'package:food_court/presentation/features/welcome_feature/pages/welcome_screen.dart';

import '../../../../core/config/utils/size_config.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const WelcomeScreenBody();
  }
}