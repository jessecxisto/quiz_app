import 'package:basico_2/components/sumario_perguntas/perguntas_respostas.dart';

import 'package:flutter/material.dart';

class SumarioPerguntas extends StatelessWidget {
  const SumarioPerguntas(this.dadosSumario, {super.key});

  final List<Map<String, Object>> dadosSumario;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: dadosSumario.map((dados) {
            return PerguntasRespostas(dados);
          }).toList(),
        ),
      ),
    );
  }
}
