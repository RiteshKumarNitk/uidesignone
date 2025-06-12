import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.pink[50],
      // appBar: AppBar(title: const Text("Calculator")),
      body: const Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter number",
                hintText: "Enter Here",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
