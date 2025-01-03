import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(100, 89, 224, 159),
        body: const GradientContainer(
          text: "Earth",
        ),
      ),
    );
  }
}
