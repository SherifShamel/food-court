import 'package:flutter/material.dart';
import 'package:food_court/domain/entity/meal_entity.dart';


class TempWidget extends StatelessWidget {
  final MealEntity categoryData;
  const TempWidget({required this.categoryData,super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                // borderRadius: BorderRadius.circular(15),
              ),
              height: 100,
              width: double.infinity,
              child: Image.network(
                categoryData.mealUrl,
                opacity: const AlwaysStoppedAnimation(0.6),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          categoryData.mealName,
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
