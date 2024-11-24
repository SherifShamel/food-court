import 'package:flutter/material.dart';
import 'package:food_court/presentation/features/favourites_feature/pages/favourites_screen.dart';
import '../home_feature/pages/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const FavouritesScreen()
    // const MoviesListView(),
    // const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    // final meals = ref.watch(favouriteProvider);
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
              icon: Icon(Icons.star),
              label: "Favourites",

            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.shopping_cart_outlined,
            //   ),
            //   backgroundColor: ApplicationThemeManager.myGreenBackground,
            //   label: "Cart",
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.favorite_outline_rounded),
            //   label: "Favorites",
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings_outlined),
            //   label: "Settings",
            // ),
          ]),
    );
  }
}
