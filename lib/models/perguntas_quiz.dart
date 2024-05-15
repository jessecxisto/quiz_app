class PerguntasQuiz {
  const PerguntasQuiz(this.texto, this.respostas);

  final String texto;
  final List<String> respostas;

  List<String> getRespostasEmbaralhadas() {
    List<String> respostasEmbaralhadas = List.of(respostas);
    respostasEmbaralhadas.shuffle();
    return respostasEmbaralhadas;
  }
}
