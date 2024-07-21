import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/presentation/features/filter_feature/widgets/category_widget.dart';
import 'package:food_court/presentation/features/filter_feature/widgets/rating_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onTap = false;
    List<String> categories = [
      "Beef",
      "Chicken",
      "Sushi",
      "Drinks",
      "Offers",
      "Sandwich",
      "Sandwich",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter By Category"),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Reset"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Category",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => CategoryWidget(
                  categoryName: categories[index],
                ),
              ),
            ),
            SizedBox(
                height: 50,
                // width: 50,
                child: GridView.builder(
                  // physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5.5,
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (context, index) =>
                  const RatingWidget(rating: "1.0"),
                )),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(
                  ApplicationThemeManager.primaryColor,
                ),
              ),
              onPressed: () {},
              child: const Text("Apply Filters"),
            ),
          ],
        ),
      ),
    );
  }
}
