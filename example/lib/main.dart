import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar/top_snackbar.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Top Snackbar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Custom snackbar with only text
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.show(
                    context, 'This is an example of a custom snackbar');
              },
              child: const Text("Custom Snackbar"),
            ),

            // Custom snackbar with icon and text
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.show(context,
                    'This is an example of a custom snackbar with an icon',
                    leadingIcon: CupertinoIcons.checkmark_alt_circle_fill);
              },
              child: const Text("Custom Snackbar with Icon"),
            ),

            // Custom snackbar with info style
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showInfo(
                    context, 'This is an example of an info snackbar');
              },
              child: const Text("Info Snackbar"),
            ),

            // Custom snackbar with success style
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showSuccess(
                    context, 'This is an example of a success snackbar');
              },
              child: const Text("Success Snackbar"),
            ),

            // Custom snackbar with warning style
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showWarning(
                    context, 'This is an example of a warning snackbar');
              },
              child: const Text("Warning Snackbar"),
            ),

            // Custom snackbar with error style
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showError(
                    context, 'This is an example of an error snackbar');
              },
              child: const Text("Error Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
