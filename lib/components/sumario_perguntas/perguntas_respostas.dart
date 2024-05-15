import 'package:basico_2/components/sumario_perguntas/numero_pergunta.dart';
import 'package:basico_2/components/texto_titulo.dart';
import 'package:flutter/material.dart';

class PerguntasRespostas extends StatelessWidget {
  const PerguntasRespostas(this.dados, {super.key});

  final Map<String, Object> dados;

  @override
  Widget build(BuildContext context) {
    final ehRespostaCorreta =
        dados['resposta-usuario'] == dados['resposta-certa'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NumeroPergunta(
            ehRespostaCerta: ehRespostaCorreta,
            indicePerguntas: dados['indice-pergunta'] as int),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextoTitulo(
                dados['pergunta'] as String,
                color: Colors.white,
                fontSize: 16,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 5),
              TextoTitulo(
                dados['resposta-usuario'] as String,
                textAlign: TextAlign.start,
                fontSize: 12,
              ),
              TextoTitulo(
                dados['resposta-certa'] as String,
                fontSize: 12,
                textAlign: TextAlign.start,
                color: Color.fromARGB(255, 0, 44, 61),
              ),
            ],
          ),
        )
      ],
    );
  }
}
