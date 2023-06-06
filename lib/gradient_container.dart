import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    this.child,
    required this.colors,
    super.key,
  });

  final Widget? child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.lightBlueAccent, width: 8),
        // borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: colors,
          // begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
