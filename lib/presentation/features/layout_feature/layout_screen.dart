import 'package:flutter/material.dart';

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
              icon: Icon(Icons.home),
              label: "Home",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   label: "Search",
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
