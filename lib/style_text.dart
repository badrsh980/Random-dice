import 'package:flutter/material.dart';

class ContrastText extends StatelessWidget {
  final String text;

  const ContrastText({Key? key, this.text = 'Default Text'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 24),
    );
  }
}
