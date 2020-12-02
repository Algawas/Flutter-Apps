import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: Buttons()),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  void playNote(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded key(int i, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(i);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        key(1, Colors.red),
        key(2, Colors.orange),
        key(3, Colors.yellow),
        key(4, Colors.green),
        key(5, Colors.cyan),
        key(6, Colors.blue),
        key(7, Colors.purple),
      ],
    );
  }
}
