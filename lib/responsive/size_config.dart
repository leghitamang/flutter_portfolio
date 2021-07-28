import 'package:flutter/material.dart';

class SizeConfig {
  MediaQueryData? _mediaQueryData;
  static double? screenHeight;
  static double? screenWidth;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    orientation = _mediaQueryData!.orientation;
  }
  
}
