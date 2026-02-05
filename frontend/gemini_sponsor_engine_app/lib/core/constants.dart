import 'package:flutter/material.dart';


class SizesApplication {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
}

class ColorsApplication{
  static const primaryColorLight = Color.fromARGB(255, 255, 255, 255);
  static const secondaryColorLight = Color.fromARGB(255, 208, 208, 208);
  static const actionColorLight = Color.fromARGB(255, 156, 238, 182);
  static const accentColorLight = Color.fromARGB(255, 209, 255, 223);
  
  static const primaryColorDark = Color.fromARGB(255, 0, 0, 0);
  static const secondaryColorDark = Color.fromARGB(255, 102, 102, 102);
  static const actionColorDark = Color.fromARGB(255, 156, 238, 182);
  static const accentColorDark = Color.fromARGB(255, 209, 255, 223);
  
  static Color primaryColor(bool isLight){
    return isLight ? primaryColorLight : primaryColorDark;
  }

  static Color secondaryColor(bool isLight){
    return isLight ? secondaryColorLight : secondaryColorDark;
  }

  static Color actionColor(bool isLight){
    return isLight ? actionColorLight : actionColorDark;
  }

  static Color accentColor(bool isLight){
    return isLight ? accentColorLight : accentColorDark;
  }
}