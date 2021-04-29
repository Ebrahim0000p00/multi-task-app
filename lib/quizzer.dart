import 'package:flutter/material.dart';
import 'package:stmange/quizzerBrain.dart';

class Quizzer extends StatefulWidget {
  @override
  _QuizzerState createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  QuizzerBrain quizzerBrain = QuizzerBrain();
  List<Icon> scoreKeeper = [];

  void addCheck(bool isTrue) {
    setState(() {
      if (isTrue == quizzerBrain.getCorrectAnswer()) {
        scoreKeeper.add(
          Icon(Icons.check),
        );
      } else {
        scoreKeeper.add(
          Icon(Icons.close),
        );
      }
    });
    quizzerBrain.nextNumber(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzer'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              quizzerBrain.getQuestionText(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text('True'),
              color: Colors.green,
              onPressed: () {
                addCheck(true);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text('False'),
              color: Colors.red,
              onPressed: () {
                addCheck(true);
              },
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
