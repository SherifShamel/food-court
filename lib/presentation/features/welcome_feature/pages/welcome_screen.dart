import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/config/routes/page_route_names.dart';
import '../../../../main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      bodyPadding: const EdgeInsets.all(8),
      showSkipButton: true,
      animationDuration: 350,
      skip: const Text("Skip"),
      onSkip: () => navigatorKey.currentState!.pushReplacementNamed(PageRouteNames.layout),
      next: const Text("Next"),
      showNextButton: true,
      done: const Text("Done"),
      onDone: () {
        navigatorKey.currentState!.pushReplacementNamed(PageRouteNames.layout);
      },
      pages: [
        PageViewModel(
          title: "Online Payments",
          body: "Buy Anything you need online!",
          image: Image.asset("assets/img/apps.png"),
        ),
        PageViewModel(
          title: "Cashback And Personal Offers!",
          body:
              "Earn points, cashback, and exclusive offers. \n All in One Place!",
          image: Image.asset("assets/img/choose.png"),
        ),
        PageViewModel(
          title: "Shares",
          body:
              "Stay updated on promotions and offers \n Plan wisely, save more!",
          image: Image.asset("assets/img/heart.png"),
        ),
        PageViewModel(
          title: "Skip The Queue!",
          body: "Pay online for hassle-free purchases!",
          image: Image.asset("assets/img/choose.png"),
        ),
      ],
    ));
  }
}
