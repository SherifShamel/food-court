import 'dart:async';

import 'package:flutter/material.dart';

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
      navigatorKey.currentState!.pushReplacementNamed(PageRouteNames.layout);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://media.tenor.com/EqaYUU6xvpoAAAAi/spinning-burger.gif",
            fit: BoxFit.fill),
      ),
    );
  }
}
