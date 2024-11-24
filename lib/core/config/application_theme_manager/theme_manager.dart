import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const myGreenBackground = Color(0xff347928);
  static const primaryTextColor = Color(0xffFCCD2A);
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor:const Color(0xffFFFBE6),
    primaryColor: const Color(0xffC0EBA6),
    primaryColorDark: const Color(0xff121312),
    appBarTheme: const AppBarTheme(
      backgroundColor: myGreenBackground,
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
      selectedItemColor: myGreenBackground,
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
        color: myGreenBackground,
        size: 30,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "Gotham",
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: myGreenBackground,
      ),
    ),
  );
}
