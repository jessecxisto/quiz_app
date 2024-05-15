import 'package:basico_2/components/gradient_container.dart';
import 'package:basico_2/data/perguntas.dart';
import 'package:basico_2/pages/pagina_inicial.dart';
import 'package:basico_2/pages/tela_perguntas.dart';
import 'package:basico_2/pages/tela_resultado.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> respostasSelecionadas = [];

  void recomecarQuiz() {
    setState(() {
      telaAtual = TelaPerguntas(onSelecionarResposta: selecionarResposta);
    });
  }

  void selecionarResposta(String resposta) {
    respostasSelecionadas.add(resposta);

    if (respostasSelecionadas.length == perguntas.length) {
      setState(() {
        telaAtual = TelaResultado(
          onPressed: recomecarQuiz,
          respostasEscolhidas: respostasSelecionadas,
        );
      });
    }
  }

  late Widget telaAtual;

  @override
  void initState() {
    telaAtual = PaginaInicial(
      onPressed: trocarTela,
    );
    super.initState();
  }

  void trocarTela() {
    setState(() {
      telaAtual = TelaPerguntas(
        onSelecionarResposta: selecionarResposta,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: telaAtual,
    );
  }
}
