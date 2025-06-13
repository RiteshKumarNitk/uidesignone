import 'package:flutter/material.dart';
import 'package:uidesignone/view/calculator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          top: false,
          child: Container(
            color: Colors.blue,
            child: CalculatorView(),
          )
        ),
      );
    }
}
