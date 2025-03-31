import 'dart:math';

import 'package:flutter/material.dart';

class ScreenSize {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getDiagonal(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  sqrt(pow(size.width, 2) + pow(size.height, 2));
  }
}


const constantSizedButtonSize = Size(2.5, 20);

const constantSizedTextFieldSizeHorizontally = 12;