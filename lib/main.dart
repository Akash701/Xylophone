import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundsnumber(int numbers) {
    final sound = AudioCache();
    sound.play('note$numbers.wav');
  }

  Expanded buildkey(Color n1, int n2) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: n1,
        onPressed: () {
          soundsnumber(n2);
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
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.purple, 3),
              buildkey(Colors.blue, 4),
              buildkey(Colors.green, 5),
              buildkey(Colors.teal, 6),
              buildkey(Colors.yellow, 7),
            ], //children
          ),
        ),
      ),
    );
  }
}
