import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 48,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
