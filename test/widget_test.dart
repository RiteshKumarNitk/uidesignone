import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Hello world test", (WidgetTester tester) async{
    await tester.pumpWidget(const MyApp());
  });
}