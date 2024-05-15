import 'package:flutter/material.dart';

class TextoBotoes extends StatelessWidget {
  const TextoBotoes(
    this.texto, {
    super.key,
    this.fontSize = 15,
    this.color = Colors.white,
  });

  final double fontSize;
  final String texto;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
