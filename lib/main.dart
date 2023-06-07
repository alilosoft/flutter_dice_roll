import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

import 'dice_roller.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice Roll App',
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.lime, Colors.green],
          child: DiceRoller(),
        ),
      ),
    );
  }
}
