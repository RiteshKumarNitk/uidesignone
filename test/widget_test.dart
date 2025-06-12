import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uidesignone/app/app.dart'; // Make sure this path is correct

void main() {
  testWidgets("Hello world test", (WidgetTester tester) async {
    // Load the MyApp widget
    await tester.pumpWidget(const MyApp());

    // Verify that "Hello My App" appears in the widget tree
    expect(find.text("Hello My Appsss"), findsOneWidget);

    // Optionally, check for Center or Container widgets if needed
    expect(find.byType(Center), findsOneWidget);
    expect(find.byType(Container), findsOneWidget);
  });
}
