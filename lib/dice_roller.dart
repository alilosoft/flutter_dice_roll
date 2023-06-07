import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var _currentDice = 1;
  final _random = Random();

  void rollDice() {
    setState(() {
      _currentDice = _random.nextInt(6) + 1;
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
            child:
                Image.asset('assets/images/dice-$_currentDice.png', scale: 2),
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
