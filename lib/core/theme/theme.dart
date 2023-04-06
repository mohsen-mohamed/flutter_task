import 'package:flutter/material.dart';

class AppTheme {

  static const Color defaultColor = Color(0xff00A8FF);


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Cairo',
    primaryColor: defaultColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      backgroundColor: Color(0xff1F222A),
    ),
  );
}
