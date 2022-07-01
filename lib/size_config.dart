import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData  _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double  defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  //812 is the layout height used by designers
  return (inputHeight / 832.0)  * screenHeight;
}

//get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  //375 is the layout width used by designers
  return (inputWidth / 375.0)  * screenWidth;
}