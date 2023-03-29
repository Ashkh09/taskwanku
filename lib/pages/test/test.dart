import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _questionIndex = 0;
  List<String> _questions = [
    'Amphibi berasal dari kata Amphibios yang artinya…',
    'Apa yang membedakan Amphibi dengan ikan dan reptil?',
    'Salah satu ordo Amphibi, yaitu Ordo Caudata, dikenal sebagai hewan'
  ];
  List<List<String>> _answers = [
    [
      'Hidup di tanah kering',
      'Hidup di laut dalam',
      'Hidup di udara',
      'Hidup di darat dan air'
    ],
    [
      'Amphibi memiliki sistem pernapasan yang lebih kompleks',
      'Amphibi mempunyai otot yang lebih kuat',
      'Amphibi mempunyai ekor yang lebih panjang',
      'Amphibi tidak dapat bertelur di air'
    ],
    ['Berkaki empat', 'Berambut lebat', 'Bermulut besar', 'Bermata kecil'],
  ];
  List<int> _correctAnswers = [4, 1, 2];
  int _score = 0;

  void _answerQuestion(int answerIndex) {
    if (_correctAnswers[_questionIndex] == answerIndex) {
      _score++;
    }
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
              child: Container(
                width: double.maxFinite,
                height: 70.0,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                    child: Text(
                  "Test",
                  style: TextStyle(fontSize: 30, color: Colors.orange),
                )),
              ),
            ),
            _questionIndex < _questions.length
                ? Padding(
                    padding: EdgeInsetsDirectional.all(20),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          ' ${_questions[_questionIndex]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 16),
                        ..._answers[_questionIndex]
                            .asMap()
                            .entries
                            .map((entry) {
                          int index = entry.key;
                          String answer = entry.value;
                          return Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: ElevatedButton(
                              onPressed: () => _answerQuestion(index + 1),
                              child: Text(
                                answer,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Quiz completed!',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Score: $_score / ${_questions.length}',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _resetQuiz,
                          child: Text('Reset Quiz'),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
