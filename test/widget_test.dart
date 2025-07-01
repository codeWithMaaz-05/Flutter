import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator_app/main.dart'; // Update if your app name is different

void main() {
  testWidgets('Calculator adds two numbers', (WidgetTester tester) async {
    // Build the calculator app.
    await tester.pumpWidget(CalculatorApp());

    // Tap '2'
    await tester.tap(find.text('2'));
    await tester.pump();

    // Tap '+'
    await tester.tap(find.text('+'));
    await tester.pump();

    // Tap '3'
    await tester.tap(find.text('3'));
    await tester.pump();

    // Tap '='
    await tester.tap(find.text('='));
    await tester.pump();

    // Now check if the result contains '5'
    expect(find.text('5'), findsOneWidget);
  });
}
