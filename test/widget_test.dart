import 'package:calculator/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets("Calculator", (WidgetTester tester) async {
    await tester.pumpWidget(HomeScreen());

    expect(find.byType(Text), findsWidgets);
  });
}