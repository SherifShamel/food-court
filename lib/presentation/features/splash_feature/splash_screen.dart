import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_court/generated/assets.dart';

import '../../../core/config/routes/page_route_names.dart';
import '../../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      navigatorKey.currentState!.pushReplacementNamed(PageRouteNames.welcome);
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
          Assets.imgSplashImage,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover),
    );
  }
}
