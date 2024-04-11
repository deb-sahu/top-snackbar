import 'package:flutter/material.dart';

/// The class that contains the custom styles for the app.
class Styles {
  /// The custom text style for the app.
  /// Uses the [MediaQuery] size factor to adjust the text size.
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
