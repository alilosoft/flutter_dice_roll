import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var _currentDice = 'assets/images/dice-1.png';

  void rollDice() {
    final num = Random().nextInt(6) + 1;
    setState(() {
      _currentDice = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: rollDice,
            child: Image.asset(_currentDice, scale: 1.5),
          ),
          OutlinedButton(
            onPressed: rollDice,
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Roll Dice',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
