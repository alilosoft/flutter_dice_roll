import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
import 'package:first_app/styled_text.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First Flutter App',
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.limeAccent, Colors.green],
          child: StyledText('💙 Hello Flutter 💙💦'),
        ),
      ),
    );
  }
}
