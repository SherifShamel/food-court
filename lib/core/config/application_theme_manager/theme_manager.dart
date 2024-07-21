import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const primaryColor = const Color(0xfffcb93a);
  static ThemeData theme = ThemeData(
    primaryColor: const Color(0xfffcb93a),
    primaryColorDark: const Color(0xff121312),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
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
        color: Colors.yellow,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.yellow,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.yellow,
      ),
      bodySmall: TextStyle(
        fontFamily: "Gotham",
        fontWeight: FontWeight.w200,
        fontSize: 13,
        color: Colors.yellow,
      ),
    ),

    //bottom nav bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff1A1A1A),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xffFFB224),
      unselectedItemColor: Color(0xffC6C6C6),
      unselectedIconTheme: IconThemeData(
        color: Color(0xffC6C6C6),
        size: 25,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: "Gotham",
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Color(0xffC6C6C6),
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xffFFB224),
        size: 30,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "Gotham",
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xffFFB224),
      ),
    ),
  );
}
