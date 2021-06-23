import 'package:flutter/material.dart';

/* 0xff2C2C49 0xff4A375F 0xffD597CE 0xffF5B0CB - Color Dark */

/* 0xffF0ECE3 0xffDFD3C3 0xffC7B198 0xff596E79 - Color Light
https://colorhunt.co/palette/f0ece3dfd3c3c7b198596e79 */

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff2C2C49),
    fontFamily: 'SF-Pro-Rounded',
    bottomAppBarColor: Color(0xff4A375F),
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
    primaryColor: const Color(0xffD597CE),
    iconTheme: IconThemeData(color: Color(0xffF5B0CB)),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xffF0ECE3),
    fontFamily: 'SF-Pro-Rounded',
    brightness: Brightness.light,
    bottomAppBarColor: Color(0xffDFD3C3),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    ),
    primaryColor: const Color(0xffC7B198),
    iconTheme: const IconThemeData(color: Color(0xff596E79)),
  );
}
