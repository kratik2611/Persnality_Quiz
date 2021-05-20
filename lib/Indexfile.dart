import 'package:flutter/material.dart';

class Indexing extends StatelessWidget {
  final String question;

  Indexing(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        this.question,
        style: TextStyle(fontSize: 25,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
