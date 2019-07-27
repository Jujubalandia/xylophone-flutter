import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

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
              buildKey(song: 'note1.wav', color: Colors.red),
              buildKey(song: 'note2.wav', color: Colors.pink),
              buildKey(song: 'note3.wav', color: Colors.purple),
              buildKey(song: 'note4.wav', color: Colors.orange),
              buildKey(song: 'note5.wav', color: Colors.yellow),
              buildKey(song: 'note6.wav', color: Colors.green),
              buildKey(song: 'note7.wav', color: Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({String song, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSounds(song);
        },
        color: color,
      ),
    );
  }

  void playSounds(String sound) {
    final player = AudioCache();
    player.play(sound);
  }
}
