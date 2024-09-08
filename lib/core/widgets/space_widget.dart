import 'package:flutter/material.dart';
import 'package:food_court/core/config/utils/size_config.dart';

class VerticalSpace extends StatelessWidget {
  final double? value;

  const VerticalSpace({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  final double? value;

  const HorizontalSpace({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}