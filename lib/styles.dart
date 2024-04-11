import 'package:flutter/material.dart';

class Styles {
    static TextStyle customText(
    BuildContext context, {
    Color? color,
    double? sizeFactor, // MediaQuery size factor
    String? family,
    FontWeight? weight,
  }) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * (sizeFactor ?? 0.035),
      fontWeight: weight ?? FontWeight.w400,
      color: color ?? Colors.black,
    );
  }
}