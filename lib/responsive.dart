import 'package:flutter/material.dart';

class ResponsiveUtils {
  static double getWidth(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }

  static double getHeight(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }

  static double getFontSize(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }
}