import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//'ans': [{'option':,'score':},
//     {'option':,'score':},
//   {'option':,'score':},
// {'option':,'score':}]

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'ques':
          '1. Which of the following statement is/are correct about Favipiravir?',
      'ans': [
        {'option': 'A. Favipiravir is an antiviral COVID-19 drug.', 'score': 0},
        {
          'option':
              'B. Glenmark Pharmaceuticals under the brand name FabiFlu has launched an antiviral drug Favipiravir.',
          'score': 0
        },
        {
          'option':
              'C. It is India\'s first COVID-19 drug launched, priced at Rs 103 per tablet.',
          'score': 0
        },
        {'option': 'D. All the above are correct', 'score': 10}
      ]
    },
    {
      'ques':
          '2. How many countries, areas or territories are suffering from novel coronavirus outbreak in the World?',
      'ans': [
        {'option': 'A. More than 50', 'score': 0},
        {'option': 'B. More than 100', 'score': 0},
        {'option': 'C. More than 150', 'score': 0},
        {'option': 'D. More than 200', 'score': 10}
      ]
    },
    {
      'ques':
          '3.  Thailand announced that it has proceeded to test its novel coronavirus vaccine on which animal/bird?',
      'ans': [
        {'option': 'A. Monkeys', 'score': 10},
        {'option': 'B. Lizards', 'score': 0},
        {'option': 'C. Hens', 'score': 0},
        {'option': 'D. Kites', 'score': 0}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print(_questionIndex);
      print('working ok!');
    } else {
      print('crossed the limit');
    }
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _answerQuestion,
                _questionIndex,
                _questions,
              )
            : Result(_totalScore, _restart),
      ),
    );
  }
}
