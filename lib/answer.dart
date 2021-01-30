import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _selectHandler;
  final String _answerText;

  Answer(this._selectHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(_answerText),
          onPressed: _selectHandler,
        ));
  }
}
