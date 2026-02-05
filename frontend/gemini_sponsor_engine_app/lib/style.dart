import "package:flutter/material.dart";


class AppSizes {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}

class AppColors {
  static const Color lightBg = Color.fromARGB(255, 230, 239, 248);
  static const Color darkBg = Color.fromARGB(255, 1, 20, 34);
  static const Color textBoxColor = Colors.white;
  static const Color textBoxColorDark = Color.fromARGB(255, 0, 0, 0);

  static Color background(bool isLight){
    return isLight ? lightBg : darkBg;
  }

}