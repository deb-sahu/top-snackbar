library top_snackbar;

import 'package:flutter/material.dart';
import 'package:top_snackbar/styles.dart';

/// The class that contains the custom top snackbar.
class CustomTopSnackbar {
  /// Shows a custom snackbar at the top of the screen. The snackbar requires a [BuildContext] and a [String] message. The [leadingIcon] parameter is optional and defaults to null. The [duration] parameter is optional and defaults to 3 seconds. The [backgroundColor] parameter is optional and defaults to a blue color. The [borderColor] parameter is optional and defaults to a lighter blue color. The [shadowColor] parameter is optional and defaults to black. The [iconColor] parameter is optional and defaults to white. The [textColor] parameter is optional and defaults to white. The [heightFactor] parameter is optional and defaults to 0.075. The [textSizeFactor] parameter is optional and defaults to 0.035. The [iconSizeFactor] parameter is optional and defaults to 0.025. The [borderRadius] parameter is optional and defaults to 8. The [topPadding] parameter is optional and defaults to 100. The [leftPadding] parameter is optional and defaults to 0. The [rightPadding] parameter is optional and defaults to 0.
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
                        color: textColor, sizeFactor: textSizeFactor),
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

  /// Shows an info snackbar at the top of the screen. The snackbar requires a [BuildContext] and a [String] message. The [duration] parameter is optional and defaults to 3 seconds.
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

  /// Shows a success snackbar at the top of the screen. The snackbar requires a [BuildContext] and a [String] message. The [duration] parameter is optional and defaults to 3 seconds.
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

  /// Shows an error snackbar at the top of the screen. The snackbar requires a [BuildContext] and a [String] message. The [duration] parameter is optional and defaults to 3 seconds.
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

  /// Shows a warning snackbar at the top of the screen. The snackbar requires a [BuildContext] and a [String] message. The [duration] parameter is optional and defaults to 3 seconds.
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
