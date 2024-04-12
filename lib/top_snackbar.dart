library top_snackbar;

import 'package:flutter/material.dart';
import 'package:top_snackbar/styles.dart';

/// The class that contains the custom top snackbar widget and predefined snackbar types.
class CustomTopSnackbar {
  /// Shows a custom snackbar at the top of the screen.
  ///
  /// **Required**
  /// - [BuildContext] context
  /// - [String] message
  ///
  /// **Optional**
  /// - [IconData] leadingIcon (default: null)
  /// - [Duration] duration (default: 3 seconds)
  /// - [Color] backgroundColor (default: 0xFF1273eb) i.e. blue color
  /// - [Color] borderColor (default: 0xFF3860be) i.e. blue color
  /// - [Color] shadowColor (default: black)
  /// - [Color] iconColor (default: white)
  /// - [Color] textColor (default: white)
  /// - [FontWeight] fontWeight (default: FontWeight.w600)
  /// - [String] fontFamily (default: null) i.e. Make sure to add the font in the pubspec.yaml file before using it
  /// - [double] heightFactor (default: 0.075) i.e. 7.5% of screen height, uses [MediaQuery] to adjust height
  /// - [double] textSizeFactor (default: 0.035) i.e. 3.5% of screen width, uses [MediaQuery] to adjust text size
  /// - [double] iconSizeFactor (default: 0.025) i.e. 2.5% of screen width, uses [MediaQuery] to adjust icon size
  /// - [double] borderRadius (default: 8)
  /// - [double] topPadding (default: 100)
  /// - [double] leftPadding (default: 0)
  /// - [double] rightPadding (default: 0)
  ///
  /// **Example:**
  /// ```dart
  /// CustomTopSnackbar.show(
  ///  context,
  /// 'This is a custom snackbar',
  /// leadingIcon: Icons.info_outline,
  /// duration: Duration(seconds: 5),
  /// // Add more optional parameters as needed
  /// );
  /// ```
  static void show(
    BuildContext context,
    String message, {
    IconData? leadingIcon,
    Duration duration = const Duration(seconds: 3),
    Color backgroundColor = const Color(0xFF1273eb),
    Color borderColor = const Color(0xFF3860be),
    Color shadowColor = Colors.black,
    Color iconColor = Colors.white,
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.w600,
    String? fontFamily,
    double heightFactor = 0.075,
    double textSizeFactor = 0.035,
    double iconSizeFactor = 0.025,
    double borderRadius = 8,
    double topPadding = 100,
    double leftPadding = 0,
    double rightPadding = 0,
  }) {
    final overlay = Overlay.of(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final overlayEntry = OverlayEntry(
      builder: (BuildContext context) => Positioned(
        top: topPadding,
        left: leftPadding,
        right: rightPadding,
        child: Material(
          color: Colors.transparent,
          child: Container(
            height: height * heightFactor,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: borderColor, width: 0.5),
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.5),
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              children: [
                if (leadingIcon != null)
                  Icon(
                    leadingIcon,
                    color: iconColor,
                    size: height * iconSizeFactor,
                  ),
                if (leadingIcon != null) SizedBox(width: width * 0.02),
                Flexible(
                  child: Text(
                    message,
                    style: Styles.customText(context,
                        color: textColor,
                        sizeFactor: textSizeFactor,
                        weight: fontWeight,
                        family: fontFamily),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }

  /// Shows an info snackbar at the top of the screen.
  ///
  /// **Required**
  /// - [BuildContext] context
  /// - [String] message
  ///
  /// **Optional**
  /// - [Duration] duration (default: 3 seconds)
  /// - Here, the info snackbar has a blue background color and info icon.
  ///
  /// **Example:**
  /// ```dart
  /// CustomTopSnackbar.showInfo(
  /// context,
  /// 'This is an info snackbar',
  /// duration: Duration(seconds: 5),
  /// );
  /// ```
  static void showInfo(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      backgroundColor: Colors.blue,
      borderColor: Colors.blueAccent,
      leadingIcon: Icons.info_outline,
      duration: duration,
    );
  }

  /// Shows a success snackbar at the top of the screen.
  ///
  /// **Required**
  /// - [BuildContext] context
  /// - [String] message
  ///
  /// **Optional**
  /// - [Duration] duration (default: 3 seconds)
  /// - Here, the success snackbar has a green background color and success icon.
  ///
  /// **Example:**
  /// ```dart
  /// CustomTopSnackbar.showSuccess(
  /// context,
  /// 'This is a success snackbar',
  /// duration: Duration(seconds: 5),
  /// ```
  static void showSuccess(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      backgroundColor: Colors.green,
      borderColor: Colors.greenAccent,
      leadingIcon: Icons.check_circle_outline,
      duration: duration,
    );
  }

  /// Shows an error snackbar at the top of the screen.
  ///
  /// **Required**
  /// - [BuildContext] context
  /// - [String] message
  ///
  /// **Optional**
  /// - [Duration] duration (default: 3 seconds)
  /// - Here, the error snackbar has a red background color and error icon.
  ///
  /// **Example:**
  /// ```dart
  /// CustomTopSnackbar.showError(
  /// context,
  /// 'This is an error snackbar',
  /// duration: Duration(seconds: 5),
  /// );
  /// ```
  static void showError(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      backgroundColor: Colors.red,
      borderColor: Colors.redAccent,
      leadingIcon: Icons.error_outline,
      duration: duration,
    );
  }

  /// Shows a warning snackbar at the top of the screen.
  ///
  /// **Required**
  /// - [BuildContext] context
  /// - [String] message
  ///
  /// **Optional**
  /// - [Duration] duration (default: 3 seconds)
  /// - Here, the warning snackbar has a yellow background color and warning icon.
  ///
  /// **Example:**
  /// ```dart
  /// CustomTopSnackbar.showWarning(
  /// context,
  /// 'This is a warning snackbar',
  /// duration: Duration(seconds: 5),
  /// );
  /// ```
  static void showWarning(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      backgroundColor: Colors.amber,
      borderColor: Colors.amberAccent,
      leadingIcon: Icons.warning_amber_outlined,
      duration: duration,
    );
  }
}
