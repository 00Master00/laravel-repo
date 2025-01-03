import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerOption, {super.key, required this.onSelect});

  final String answerOption;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onSelect,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      ),
      child: Text(
        answerOption,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
