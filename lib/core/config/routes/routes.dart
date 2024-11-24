import 'package:flutter/material.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';
import 'package:food_court/presentation/features/home_feature/pages/home_screen.dart';
import 'package:food_court/presentation/features/item_screen/pages/item_screen.dart';
import 'package:food_court/presentation/features/welcome_feature/widgets/welcome_view_body.dart';

import '../../../presentation/features/layout_feature/layout_screen.dart';
import '../../../presentation/features/splash_feature/splash_screen.dart';

class Routes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {

      case PageRouteNames.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case PageRouteNames.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutScreen(),
        );

      case PageRouteNames.welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomeScreenView(),
        );

      // case PageRouteNames.categoryScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const CategoryScreen(),
      //     settings: settings,
      //   );
      // case PageRouteNames.itemScreen:
      // return MaterialPageRoute(
      //     builder: (context) => const ItemScreen(), settings: settings);

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
