import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  Widget custnote(Color color, int notenum) {
    // ignore: missing_required_param
    return Expanded(
      // ignore: missing_required_param
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('audios/note$notenum.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            custnote(Colors.black, 1),
            custnote(Colors.white, 2),
            custnote(Colors.black, 3),
            custnote(Colors.white, 4),
            custnote(Colors.black, 5),
            custnote(Colors.white, 6),
            custnote(Colors.black, 7),
          ],
        ),
      ),
    );
  }
}
