import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
    title: "flutterDev",
    home: Container(
      color: Colors.deepOrange,
      child: const Center(
        child: Text(
          "Hello My App",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            textBaseline: null
          ),
        ),
      ),
    ),
  );
  }
}