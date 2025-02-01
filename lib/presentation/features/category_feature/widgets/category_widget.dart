import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/main.dart';
import 'package:food_court/presentation/features/meals_feature/pages/meals_screen.dart';

class CategoryWidget extends StatelessWidget {
  final String mealCategory, mealCategoryId, statusId, mealImage;

  const CategoryWidget({
    required this.mealCategoryId,
    required this.mealCategory,
    required this.statusId,
    required this.mealImage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (BuildContext context) => MealsScreen(
            title: mealCategory,
            categoryId: mealCategoryId,
            statusId: statusId,
          ),
        ),
      ),
      child: mealCategoryId.isNotEmpty
          ? SizedBox(
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                clipBehavior: Clip.hardEdge,
                elevation: 2,
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  alignment: Alignment.center,
                  children: [
                    mealImage != ""
                        ? FadeInImage(
                            placeholder: const AssetImage(
                              'assets/img/logo.jpg',
                            ),
                            image: NetworkImage(mealImage),
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : const Text(
                            "الصورة غير متوفرة حاليا",
                          ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black54,
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 30,
                        ),
                        child: Text(
                          mealCategory,
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
                    ),
                  ],
                ),
              ),
            )
          : const CircularProgressIndicator(),
    );
  }
}
