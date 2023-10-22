import 'package:flutter/material.dart';
import 'package:project2/style_text.dart';
import 'dart:math';

final _randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  List<String> activeDiceImage = [
    'assets/dice-1.png',
    'assets/dice-2.png',
    'assets/dice-3.png',
    'assets/dice-4.png',
    'assets/dice-5.png',
    'assets/dice-6.png'
  ];

  int number = 0;
  void rollDice() {
    setState(() {
      number = _randomizer.nextInt(6);
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage[number],
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
          child: const ContrastText(
            text: 'Roll Dice',
          ),
        ),
      ],
    );
  }
}
