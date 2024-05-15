import 'package:flutter/material.dart';

class NumeroPergunta extends StatelessWidget {
  const NumeroPergunta(
      {super.key,
      required this.ehRespostaCerta,
      required this.indicePerguntas});

  final int indicePerguntas;
  final bool ehRespostaCerta;

  @override
  Widget build(BuildContext context) {
    final numeroPergunta = indicePerguntas + 1;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: ehRespostaCerta
            ? const Color.fromARGB(255, 85, 253, 231)
            : const Color.fromARGB(255, 248, 119, 153),
        shape: BoxShape.circle,
      ),
      child: Text(
        numeroPergunta.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 0, 27, 49),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
