import 'package:flutter/material.dart';
import 'package:food_court/core/config/utils/size_config.dart';
import 'package:food_court/core/constants.dart';

class CustomGeneralButton extends StatelessWidget {
  final String? text;

  const CustomGeneralButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
