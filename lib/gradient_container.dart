import 'package:flutter/material.dart';
import 'package:project2/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final String text;
  final List<Color> colors;

  GradientContainer({Key? key, this.text = "", required this.colors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
