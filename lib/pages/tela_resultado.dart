import 'package:basico_2/components/sumario_perguntas/sumario_perguntas.dart';
import 'package:basico_2/components/texto_botoes.dart';
import 'package:basico_2/components/texto_titulo.dart';
import 'package:basico_2/data/perguntas.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado(
      {super.key, required this.respostasEscolhidas, required this.onPressed});

  final void Function() onPressed;

  final List<String> respostasEscolhidas;

  List<Map<String, Object>> getDadosSumario() {
    List<Map<String, Object>> sumario = [];

    for (int i = 0; i < respostasEscolhidas.length; i++) {
      sumario.add(
        {
          'indice-pergunta': i,
          'pergunta': perguntas[i].texto,
          'resposta-usuario': respostasEscolhidas[i],
          'resposta-certa': perguntas[i].respostas[0],
        },
      );
    }
    return sumario;
  }

  @override
  Widget build(BuildContext context) {
    var dadosSumario = getDadosSumario();
    int numeroDePerguntas = perguntas.length;
    var respostasCertas = dadosSumario.where((dados) {
      return dados['resposta-usuario'] == dados['resposta-certa'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextoTitulo(
                'Você acertou $respostasCertas de $numeroDePerguntas perguntas!'),
            const SizedBox(height: 30),
            SumarioPerguntas(dadosSumario),
            const SizedBox(height: 30),
            TextButton.icon(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onPressed,
              icon: const Icon(Icons.restart_alt),
              label: const TextoBotoes('Recomeçar o Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
