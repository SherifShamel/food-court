import 'package:flutter/material.dart';
import 'package:food_court/core/config/utils/size_config.dart';
import 'package:food_court/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  final String? title;
  final String? description;
  final String? image;
  const PageViewItem({super.key, this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 22,),
        Image.asset(
          image!,
          height: SizeConfig.defaultSize! * 17,
          fit: BoxFit.cover,
        ),
        const VerticalSpace(value: 5,),
        Text(title!,style: const TextStyle(
          fontSize: 20,
          color: Color(0xFF2f2e41),
          fontWeight: FontWeight.w600,
        ),),
        const VerticalSpace(value: 2.5,),
        Text(description!),
      ],
    );
  }
}
