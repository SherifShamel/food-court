import 'package:flutter/material.dart';

import '../../../../core/config/application_theme_manager/theme_manager.dart';
import '../widgets/category_widget.dart';
import '../widgets/price_widget.dart';
import '../widgets/rating_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Beef",
      "Chicken",
      "Sushi",
      "Drinks",
      "Offers",
      "Sandwich",
      "Sandwich",
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Filter By Category"),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("Reset"),
            ),
          ],
        ),
        body: Column(
          children: [
            const Text(
              "Search By Category",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5 / 3,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => CategoryWidget(
                  categoryName: categories[index],
                ),
              ),
            ),
            const Text(
              "Search By Rating",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: GridView.builder(
                itemCount: 5,
                // physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) =>
                const RatingWidget(rating: "1.0"),
              ),
            ),
            const Text(
              "Search By Price Range",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
              child: GridView.builder(
                itemCount: 5,
                // physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) => const PriceWidget(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                backgroundColor: MaterialStatePropertyAll(
                  ApplicationThemeManager.myPurple,
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
