import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:top_snackbar/top_snackbar.dart';

void main() {
  testWidgets('Test CustomTopSnackbar', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                // Show the snackbar on tap
                CustomTopSnackbar.show(
                  context,
                  'Test message',
                  duration: const Duration(milliseconds: 500), // Set a shorter duration for testing
                );
              },
              child: Container(),
            );
          },
        ),
      ),
    );

    // Tap on the GestureDetector to trigger the snackbar
    await tester.tap(find.byType(GestureDetector));
    // Pump the widget tree to ensure the snackbar is rendered
    await tester.pump();

    // Verify that at least one widget is shown in the overlay
    expect(find.byType(Overlay), findsOneWidget);
  });
}
