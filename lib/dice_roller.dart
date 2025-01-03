import 'package:flutter/material.dart';
import 'dart:math'; // ใช้ในการสุ่มตัวเลข

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'assets/images/dice-1.png'; // เริ่มต้นด้วยภาพ dice-1

  void rollDice() {
    // ฟังก์ชันสุ่มภาพลูกเต๋าจาก 1 ถึง 6
    int diceRoll = Random().nextInt(6) + 1; // สุ่มตัวเลข 1 ถึง 6

    // เปลี่ยนภาพตามผลสุ่ม
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png'; // สร้างเส้นทางภาพที่สุ่มได้
      print("Image is changing to dice-$diceRoll.png"); // แสดงข้อความใน console
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // แสดงภาพลูกเต๋าตามตัวแปร activeDiceImage
        Image.asset(
          activeDiceImage,
          width: 200, // ขนาดรูปภาพ
          height: 200,
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: rollDice, // ฟังก์ชันสุ่มเมื่อคลิกปุ่ม
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text(
            "Roll Dice", // ข้อความในปุ่ม
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
