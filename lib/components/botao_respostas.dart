import 'package:basico_2/components/texto_botoes.dart';
import 'package:flutter/material.dart';

class BotaoRespostas extends StatelessWidget {
  const BotaoRespostas(
    this.texto, {
    super.key,
    required this.onPressed,
  });

  final String texto;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 87, 122),
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
          ),
          onPressed: onPressed,
          child: TextoBotoes(texto),
        ),
        SizedBox(height: 10)
      ],
    );
  }
}
