import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 5) {
      resultText = 'Awesome!';
    } else if (resultScore <= 17) {
      resultText = 'Fantastic!';
    } else {
      resultText = 'Nice!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart quiz!'))
        ],
      ),
    );
  }
}
