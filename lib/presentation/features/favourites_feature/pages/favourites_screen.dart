import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_court/core/providers/favourite_provider.dart';
import 'package:food_court/presentation/features/meals_feature/widgets/meal_widget.dart';

class FavouritesScreen extends ConsumerWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final meals = ref.watch(favouriteProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Favourites"),
        ),
        body: meals.isEmpty
            ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(

                  child: Column(

                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Oh uh!..",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "It seems like there are no Favourites here yet...",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
            )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    MealWidget(mealModel: meals[index]),
                itemCount: meals.length,
              ));
  }
}
