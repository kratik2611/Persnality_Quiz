import "package:flutter/material.dart";
import 'package:second_app/Result.dart';
import 'package:second_app/Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {

  int _index = 0;
  int _quizScore = 0;

  void _restart(){
    setState(() {
    _index=0;
    _quizScore=0;
    });
  }

  void _nextIndex(int score) {
    _quizScore += score;
    setState(() {
      _index++;
    });
  }

  // void _prevIndex() {
  //   setState(() {
  //     _index--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final _ques = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'RED', 'score': 5},
          {'text': 'White', 'score': 8},
          {'text': 'GREEN', 'score': 2},
          {'text': 'BLUE', 'score': 10}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Tiger', 'score': 10},
          {'text': 'Lion', 'score': 15},
          {'text': 'Panther', 'score': 7},
          {'text': 'Rakoon', 'score': 2}
        ],
      },
      {
        'questionText': 'What\'s your favorite place?',
        'answers': [
          {'text': 'USA', 'score': 10},
          {'text': 'Australia', 'score': 15},
          {'text': 'Russia', 'score': 20}
        ],
      },
      //Add more questions according to your criteria, I have added these just for 
      //getting some output.
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _index < _ques.length
            ? Quiz(
                nextIndex: _nextIndex,
                ques: _ques,
                index: _index,
              )
            : Result(_quizScore, _restart),
      ),
    );
  }
}
