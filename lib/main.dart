import 'package:flutter/material.dart';
import 'package:slider_example/di/setup_locator.dart';
import 'package:slider_example/screens/slider_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderScreen(),
    );
  }
}
