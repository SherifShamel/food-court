import 'package:flutter/material.dart';
import 'package:food_court/core/config/routes/page_route_names.dart';
import 'package:food_court/main.dart';

import '../../../../domain/entity/meal_entity.dart';

class CategoryWidget extends StatelessWidget {
  final MealEntity categoryData;

  const CategoryWidget({required this.categoryData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigatorKey.currentState!.pushNamed(
        PageRouteNames.itemScreen,
        arguments: categoryData,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(15),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                categoryData.mealUrl,
                opacity: const AlwaysStoppedAnimation(0.4),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            categoryData.mealName ?? "no no no",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
