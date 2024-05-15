import 'package:basico_2/components/texto_botoes.dart';
import 'package:basico_2/components/texto_titulo.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 300,
            color: const Color.fromARGB(192, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const TextoTitulo(
            "Aprenda Flutter de forma divertida!",
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 87, 122),
                width: 3,
              ),
            ),
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 25,
            ),
            label: const TextoBotoes("Começar o quiz"),
          ),
        ],
      ),
    );
  }
}
