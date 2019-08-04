import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneButton(Colors.red.shade700, 1),
              XylophoneButton(Colors.orange.shade700, 2),
              XylophoneButton(Colors.yellow.shade700, 3),
              XylophoneButton(Colors.green.shade700, 4),
              XylophoneButton(Colors.teal.shade900, 5),
              XylophoneButton(Colors.blue.shade800, 6),
              XylophoneButton(Colors.purple.shade700, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final Color _color;
  final int _wav_number;
  final _audio_player = AudioCache();

  XylophoneButton(this._color, this._wav_number);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: _color,
        onPressed: () {
          _audio_player.play('note$_wav_number.wav');
        },
      ),
    );
  }
}
