import 'package:flutter/material.dart';
import 'package:gridview/IntroPage.dart';
import 'package:gridview/MenuPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
        routes: {
          '/introPage': (context) => IntroPage(),
          '/menuPage': (context) => MenuPage(),
        });
  }
}
