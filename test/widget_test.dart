import 'package:flutter/material.dart';
import 'package:flutter_learn/app/app.dart'
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Hello world test", (WidgetTester tester) async{
    await tester.pumpWidget(const MyApp());
    <
    expect(find.byType(Container).findOneWidget);
  });
}