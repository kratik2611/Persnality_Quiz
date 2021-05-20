import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function stateHandler;
  final String options;
  Answer(this.stateHandler, this.options);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(options),
        onPressed: stateHandler,
      ),
    );
  }
}
