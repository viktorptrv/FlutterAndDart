

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: MusicButtons(),
        ),
      ),
    );
  }
}

class MusicButtons extends StatelessWidget  {
  const MusicButtons({super.key});

  void playSound(int num) async{
    final Player2 = AudioPlayer();
    await Player2.setAsset('assets/note$num.wav');
    await Player2.play();
    await Player2.stop();
  }

  Expanded buildKey(Color color, int num){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
            onPressed: () {
              playSound(num);
            },
            child: Text('')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(Colors.redAccent, 1),
        buildKey(Colors.yellowAccent ,2),
        buildKey(Colors.greenAccent,3),
        buildKey(Colors.blueAccent, 4),
        buildKey(Colors.tealAccent,5),

      ],
    );
  }
}

