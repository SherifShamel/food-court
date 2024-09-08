import 'package:flutter/material.dart';
import 'package:food_court/domain/entity/meal_entity.dart';

import 'elevated_item_widget.dart';

class ItemWidget extends StatelessWidget {
  final MealEntity mealEntity;

  const ItemWidget({super.key, required this.mealEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.all(10),
          child: Image.network(
            mealEntity.mealUrl,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(25),
          child: ElevatedItemWidget(mealEntity: mealEntity),
        )
      ],
    );
  }
}
