library top_snackbar;

import 'package:flutter/material.dart';
import 'package:top_snackbar/styles.dart';

class CustomTopSnackbar {
  static void show(BuildContext context, String message,
      {
      IconData? leadingIcon,
      Duration duration = const Duration(seconds: 3),      
      Color backgroundColor = const Color(0xFF1273eb),
      Color borderColor = const Color(0xFF3860be),
      Color shadowColor = Colors.black,
      Color iconColor = Colors.white,
      Color textColor = Colors.white,
      double heightFactor = 0.075, 
      double textSizeFactor = 0.035, 
      double iconSizeFactor = 0.025,
      double borderRadius = 8,
      double topPadding = 100,
      double leftPadding = 0,
      double rightPadding = 0,}) {
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
                    style: Styles.customText(context, color: textColor, sizeFactor: textSizeFactor),
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

  static void showInfo(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      leadingIcon: Icons.info_outline,
      duration: duration,
    );
  }

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

  static void showWarning(BuildContext context, String message,
      {Duration duration = const Duration(seconds: 3)}) {
    CustomTopSnackbar.show(
      context,
      message,
      backgroundColor: Colors.yellow,
      borderColor: Colors.yellowAccent,
      leadingIcon: Icons.warning_amber_outlined,
      duration: duration,
    );
  }
}

