import 'package:stmange/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzerBrain {
  int _questionNumber = 0;
  List<Qustion> _questionBank = [
    Qustion(questionText: 'are u here?', questionAnawer: false),
    Qustion(questionText: 'do u love me?', questionAnawer: true),
    Qustion(questionText: 'do u love urself?', questionAnawer: false),
  ];
  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  void nextNumber(context) {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      Alert(
        context: context,
        title: "RFLUTTER ALERT",
        desc: "Flutter is more awesome with RFlutter Alert.",
      ).show();
    }
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnawer;
  }
}
