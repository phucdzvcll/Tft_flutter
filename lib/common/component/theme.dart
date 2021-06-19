import 'package:flutter/material.dart';

//0xff222831 0xff393E46 0xffFD7014 0xffEEEEEE - Color Dark
//0xff98DDCA 0xffD5ECC2 0xffFFD3B4 0xff8800ff - Color Light
class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff393E46),
    fontFamily: 'SF-Pro-Rounded',
    bottomAppBarColor: Color(0xff222831),
    brightness: Brightness.dark,
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
    bottomAppBarColor: Color(0xff98DDCA),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    primaryColor: const Color(0xffFFD3B4),
    iconTheme: const IconThemeData(color: Color(0xff8800ff)),
  );
}
