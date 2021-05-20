import 'package:flutter/material.dart';

import 'Indexfile.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function nextIndex;
  final List<Map<String, Object>> ques;
  final int index;

  Quiz({@required this.nextIndex, @required this.ques, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Indexing(
          ques[index]['questionText'],
        ),
        ...(ques[index]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => nextIndex(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
