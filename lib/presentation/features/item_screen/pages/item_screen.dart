import 'package:flutter/material.dart';
import 'package:food_court/domain/entity/meal_entity.dart';
import 'package:food_court/presentation/features/item_screen/widgets/item_widget.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as MealEntity;
    return Scaffold(
      body: ItemWidget(mealEntity: args),
    );
  }
}
