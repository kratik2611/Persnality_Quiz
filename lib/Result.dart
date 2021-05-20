import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartState;
  Result(this.resultScore, this.restartState);

  String get finalResult {
    String result;
    if (resultScore > 40)
      result = 'You are Amazing!!';
    else if (resultScore > 30)
      result = 'You can be more Surprising!';
    else
      result = 'You are such a Booring Person!!';

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            finalResult,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          TextButton(
            onPressed: restartState,
            child: Text(
              '**Restart Quiz**',
            ),
            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.cyan),),
            // textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
