import 'package:flutter/material.dart';

import 'core/config/application_theme_manager/theme_manager.dart';
import 'core/config/routes/page_route_names.dart';
import 'core/config/routes/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.theme,
      initialRoute: PageRouteNames.initial,
      onGenerateRoute: Routes.onGenerate,
      navigatorKey: navigatorKey,
    );
  }
}