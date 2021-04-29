import 'dart:math';

import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnum = 1;

  Widget cutbutton() {
    return FlatButton(
      child: Image.asset('assets/images/ball$ballnum.png'),
      onPressed: () {
        setState(() {
          ballnum = Random().nextInt(5) + 1;
        });
      },
    );
  }

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
          children: [cutbutton()],
        ),
      ),
    );
  }
}
