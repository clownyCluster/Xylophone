// import 'dart:html';

import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final music_player = AudioCache();
  void playSound(int soundNumber) {
    music_player.play('note$soundNumber.wav');
    // music_player.clear(fileName)
    print('Hello');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.teal, soundNumber: 2),
              buildkey(color: Colors.pink, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.orange, soundNumber: 5),
              buildkey(color: Colors.indigo, soundNumber: 6),
              buildkey(color: Colors.blueGrey, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
