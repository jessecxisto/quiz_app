import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextoTitulo extends StatelessWidget {
  const TextoTitulo(this.texto,
      {super.key,
      this.fontSize = 20,
      this.color = const Color.fromARGB(255, 133, 222, 255),
      this.textAlign = TextAlign.center});

  final double fontSize;
  final String texto;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: textAlign,
      style: GoogleFonts.lato(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
