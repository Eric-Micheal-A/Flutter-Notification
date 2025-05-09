import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutternotification/main.dart';

void main() {
  testWidgets('App UI loads correctly', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Verify if "Hello, Notifications!" text appears
    expect(find.text('Hello, Notifications!'), findsOneWidget);
  });
}
