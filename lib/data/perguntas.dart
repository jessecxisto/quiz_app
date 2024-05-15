import 'package:basico_2/models/perguntas_quiz.dart';

const perguntas = [
  PerguntasQuiz(
    "Quais são os principais blocos de construção de UIs em Flutter?",
    [
      "Widgets",
      "Componentes",
      "Blocos",
      "Funções",
    ],
  ),
  PerguntasQuiz(
    'Como são construídas as interfaces de usuário (UIs) no Flutter?',
    [
      'Ao combinar widgets no código',
      'Ao combinar widgets em um editor visual',
      'Ao definir widgets em arquivos de configuração',
      'Usando o XCode para iOS e o Android Studio para Android',
    ],
  ),
  PerguntasQuiz(
    'Qual é o propósito de um StatefulWidget?',
    [
      'Atualizar a UI conforme os dados mudam',
      'Atualizar os dados conforme a UI muda',
      'Ignorar mudanças nos dados',
      'Renderizar uma UI que não depende de dados',
    ],
  ),
  PerguntasQuiz(
    'Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Ambos são igualmente bons',
      'Nenhum dos acima',
    ],
  ),
  PerguntasQuiz(
    'O que acontece se você alterar dados em um StatelessWidget?',
    [
      'A UI não é atualizada',
      'A UI é atualizada',
      'O StatefulWidget mais próximo é atualizado',
      'Quaisquer StatefulWidgets aninhados são atualizados',
    ],
  ),
  PerguntasQuiz(
    'Como você deve atualizar dados dentro de StatefulWidgets?',
    [
      'Chamando setState()',
      'Chamando updateData()',
      'Chamando updateUI()',
      'Chamando updateState()',
    ],
  ),
];
