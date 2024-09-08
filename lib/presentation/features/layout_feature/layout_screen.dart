import 'package:flutter/material.dart';

import '../../../core/config/application_theme_manager/theme_manager.dart';
import '../category_feature/pages/category_screen.dart';
import '../favorite_feature/favorite_screen.dart';
import '../home_feature/pages/home_screen.dart';
import '../settings_feature/pages/settings_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
    // const MoviesListView(),
    // const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              backgroundColor: ApplicationThemeManager.myPurple,
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ]),
    );
  }
}
