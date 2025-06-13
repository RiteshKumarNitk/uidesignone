import 'package:flutter/material.dart';
import 'package:uidesignone/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "flutterDev",
      home: HomeView(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}