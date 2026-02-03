import "package:flutter/material.dart";


class AppSizes {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}

class AppColors {
  static const Color lightBg = Color.fromARGB(255, 232, 232, 232);
  static const Color darkBg = Color.fromARGB(255, 39, 39, 39);

  static const Color reflection = Color.fromARGB(255, 255, 255, 255);
  static const Color primaryShadow = Color.fromARGB(255, 156, 156, 156);

  static const Color darkReflection = Color.fromARGB(255, 64, 64, 64);
  static const Color darkPrimaryShadow = Color.fromARGB(255, 26, 26, 26);

  static const Color aiColorAccent = Color.fromARGB(255, 0, 127, 253);
  static const Color userColorAccent = Colors.amber;

  static const Color lightText = Color.fromARGB(255, 0, 0, 0);
  static const Color darkText = Color.fromARGB(255, 255, 255, 255);

  static Color background(bool isLight){
    return isLight ? lightBg : darkBg;
  }
  static List<Color> shadow(bool isLight){
    return isLight ? [reflection, primaryShadow] : [darkReflection, darkPrimaryShadow];
  }
  static Color textColor(bool isLight){
    return isLight ? lightText : darkText;
  }

}