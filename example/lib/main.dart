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
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.show(
                    context, 'This is an example of a custom snackbar');
              },
              child: const Text("Custom Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.show(context,
                    'This is an example of a custom snackbar with an icon',
                    leadingIcon: Icons.abc,
                    backgroundColor: Colors.blue,
                    borderColor: Colors.blueAccent);
              },
              child: const Text("Custom Snackbar with Icon"),
            ),
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showInfo(
                    context, 'This is an example of an info snackbar');
              },
              child: const Text("Info Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showSuccess(
                    context, 'This is an example of a success snackbar');
              },
              child: const Text("Success Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                CustomTopSnackbar.showWarning(
                    context, 'This is an example of a warning snackbar');
              },
              child: const Text("Warning Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
