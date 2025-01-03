import 'package:flutter/material.dart';
import 'package:myapp/dice_roller.dart'; // นำเข้า DiceRoller widget

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

var color_1 = Color.fromARGB(255, 217, 240, 7); // สีเริ่มต้น
var color_2 = Color.fromARGB(255, 0, 0, 0); // สีปลายทาง

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.text});

  final String text;

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color_1, color_2],
        ),
      ),
      child: Center(
        child: DiceRoller(), // เรียกใช้ DiceRoller ที่นี่
      ),
    );
  }
}
