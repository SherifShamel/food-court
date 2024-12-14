import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_court/core/providers/favourite_provider.dart';
import 'package:food_court/model/meal_model.dart';

import '../../../../core/config/application_theme_manager/theme_manager.dart';

class MealWidget extends ConsumerWidget {
  final MealModel mealModel;

  const MealWidget({required this.mealModel, super.key});

  @override
  Widget build(BuildContext context, ref) {
    final favouriteMeals = ref.watch(favouriteProvider);
    final isFav = favouriteMeals.contains(mealModel);

    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.center,
          children: [
            mealModel.mealImage != ""
                ? FadeInImage(
                    placeholder: const AssetImage(
                      'assets/img/logo.jpg',
                    ),
                    image: NetworkImage(mealModel.mealImage),
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : const Text(
                    "Oops! \nImage is not available at the moment..",
                    textAlign: TextAlign.center,
                  ),
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 30,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        mealModel.mealName,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        // maxLines: 1,
                        // softWrap: true,
                        style: TextStyle(
                          color: ApplicationThemeManager.theme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        style: TextStyle(
                            color: ApplicationThemeManager.theme.primaryColor),
                        textAlign: TextAlign.center,
                        "${mealModel.mealPrice}LE",
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        final wasAdded = ref
                            .read(favouriteProvider.notifier)
                            .toggleMealFavouriteStatus(mealModel);
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              wasAdded
                                  ? "Added to Favourites!"
                                  : "Removed from favourites.",
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        isFav ? Icons.star : Icons.star_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
