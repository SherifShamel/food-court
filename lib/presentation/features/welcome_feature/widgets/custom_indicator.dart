import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomIndicator extends StatelessWidget {
  final double? dotIndex;

  const CustomIndicator({super.key, this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          activeColor: kMainColor,
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: kMainColor),
              borderRadius: BorderRadius.circular(8))),
      dotsCount: 4,
      position: dotIndex!,
    );
  }
}
