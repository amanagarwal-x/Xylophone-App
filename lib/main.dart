import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:vibration/vibration.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    Vibration.vibrate(duration: 50);
    player.play('note$note.wav');
  }

  Expanded buildKey({Color buttonColor, int soundNumber}) {
    return Expanded(
      child: RaisedButton(
        color: buttonColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(buttonColor: Colors.red[800], soundNumber: 1),
            buildKey(buttonColor: Colors.yellow[800], soundNumber: 2),
            buildKey(buttonColor: Colors.orange[800], soundNumber: 3),
            buildKey(buttonColor: Colors.green[800], soundNumber: 4),
            buildKey(buttonColor: Colors.blue[800], soundNumber: 5),
            buildKey(buttonColor: Colors.pink[800], soundNumber: 6),
            buildKey(buttonColor: Colors.purple[800], soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
