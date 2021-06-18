import 'package:flutter/material.dart';

//0xff98DDCA 0xffD5ECC2 0xffFFD3B4 0xffFFAAA7 - Color Light
//0xff222831 0xff393E46 0xffFD7014 0xffEEEEEE - Color Dark
class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff393E46),
    fontFamily: 'SF-Pro-Rounded',
    brightness: Brightness.dark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color(0xffFFD3B4),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    primaryColor: const Color(0xffFD7014),
    iconTheme: IconThemeData(color: Colors.red[300]),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffD5ECC2),
    fontFamily: 'SF-Pro-Rounded',
    brightness: Brightness.light,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Color(0xffFD7014),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    primaryColor: const Color(0xffFFD3B4),
    iconTheme: const IconThemeData(color: Color(0xffFFAAA7)),
  );
}
