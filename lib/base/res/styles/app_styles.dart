import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  // Type of static variable is Color
  // Name of static varaible is primaryColor
  // primaryColor can be accessed just by wrting name of class and using dot
  //like  AppStyles.primaryColor
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppStyles.textColor,
  );
  static TextStyle headlineStyle2 = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headlineStyle4 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
