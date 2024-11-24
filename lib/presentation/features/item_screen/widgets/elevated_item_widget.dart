import 'package:flutter/material.dart';
import 'package:food_court/domain/entity/meal_entity.dart';

import '../../../../core/config/application_theme_manager/theme_manager.dart';

class ElevatedItemWidget extends StatelessWidget {
  final MealEntity mealEntity;

  const ElevatedItemWidget({
    super.key,
    required this.mealEntity,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          barrierColor: Colors.transparent,
          context: context,
          builder: (context) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const Column(
              children: [
                // Text(
                //   mealEntity.status,
                //   style: ApplicationThemeManager.theme.textTheme.bodyMedium,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Text(
                        // "${mealEntity.mealName.toUpperCase()} ${mealEntity.status.toUpperCase()} : ${mealEntity.status}"),
                    // Text("${mealEntity.mealPrice ?? "FREE"}"),
                    // Text(
                    //   "${mealEntity.mealPrice + 5 ?? "FREE"}",
                    //   style: const TextStyle(
                    //       decoration: TextDecoration.lineThrough, fontSize: 16),
                    // )
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // children: [
                //   const Text("Raw : "),
                // Text("${mealEntity.mealPrice - 2}"),
                // Text(
                //   "${mealEntity.mealPrice + 3 ?? "FREE"}",
                //   style: const TextStyle(
                //       decoration: TextDecoration.lineThrough, fontSize: 16),
                // )
                // ],
                // ),
              ],
            ),
          ),
        );
      },
      child: Text(
        mealEntity.mealName,
        style: ApplicationThemeManager.theme.textTheme.bodyMedium,
      ),
    );
  }
}
