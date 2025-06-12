import 'package:flutter/material.dart';
import 'package:uidesignone/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "flutterDev",
      home: HomeView(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:uidesignone/view/home_view.dart';

// class MyApp extends StatelessWidget{
//   const MyApp({
//     super.key
//   });

//   @override
//   Widget build(BuildContext context){
//     return HomeView();
//   }
// }
