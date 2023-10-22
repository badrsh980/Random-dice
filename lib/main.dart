import 'package:flutter/material.dart';
import 'package:project2/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          text: "Roll Dice",
          colors: const [
            Color.fromARGB(255, 28, 12, 115),
            Color.fromARGB(255, 10, 4, 56),
          ],
        ),
      ),
    ),
  );
}
