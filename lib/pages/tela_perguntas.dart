import 'package:basico_2/components/botao_respostas.dart';
import 'package:basico_2/components/texto_titulo.dart';
import 'package:basico_2/data/perguntas.dart';
import 'package:flutter/material.dart';

class TelaPerguntas extends StatefulWidget {
  const TelaPerguntas({super.key, required this.onSelecionarResposta});

  final void Function(String resposta) onSelecionarResposta;

  @override
  State<TelaPerguntas> createState() => _TelaPerguntasState();
}

class _TelaPerguntasState extends State<TelaPerguntas> {
  int indicePerguntas = 0;

  @override
  Widget build(BuildContext context) {
    var perguntaAtual = perguntas[indicePerguntas];

    void responderPergunta(String resposta) {
      widget.onSelecionarResposta(resposta);
      setState(() {
        indicePerguntas++;
      });
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextoTitulo(
              perguntaAtual.texto,
              fontSize: 18,
            ),
            const SizedBox(height: 30),
            ...perguntaAtual.getRespostasEmbaralhadas().map(
                  (resposta) => BotaoRespostas(
                    resposta,
                    onPressed: () {
                      responderPergunta(resposta);
                    },
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
