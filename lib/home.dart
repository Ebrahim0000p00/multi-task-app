import 'package:flutter/material.dart';
import 'package:stmange/ball.dart';
import 'package:stmange/quizzer.dart';
import 'package:stmange/xylophon.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            custRaisedbtn(MagicBall(), 'ball'),
            custRaisedbtn(Xylophone(), 'xylophone'),
            custRaisedbtn(Quizzer(), 'Quizzer'),
          ],
        ),
      ),
    );
  }

//---------------------------------

  Widget custRaisedbtn(var route, String btnMsg) {
    return RaisedButton(
        child: Text(btnMsg),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => route,
            ),
          );
        });
  }
}
