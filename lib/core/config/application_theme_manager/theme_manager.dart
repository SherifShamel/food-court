import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const myPurple = Color(0xff8D1EE4);
  static ThemeData theme = ThemeData(
    primaryColor: const Color(0xfffcb93a),
    primaryColorDark: const Color(0xff121312),
    appBarTheme: const AppBarTheme(
      backgroundColor: myPurple,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
    ),

    //Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.w200,
        fontSize: 13,
        color: Colors.black,
      ),
    ),

    //bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: myPurple,
      unselectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 25,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: "Gotham",
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      selectedIconTheme: IconThemeData(
        color: myPurple,
        size: 30,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "Gotham",
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: myPurple,
      ),
    ),
  );
}
