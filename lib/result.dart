import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 20) {
      resultText = "IQ Off the charts";
    } else if (resultScore >= 17) {
      resultText = "Super High IQ";
    } else if (resultScore >= 12) {
      resultText = "High IQ";
    } else {
      resultText = "Average IQ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            )),
        FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler)
      ],
    ));
  }
}
