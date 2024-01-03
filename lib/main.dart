import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  Expanded buildKey(Color color , int n) {
      return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder()
          ),
          onPressed: () {
            playSound(n);
          },
          child: const Text('')),
    );
  }

  void playSound(int n){
    final player = AudioPlayer();
    player.play(AssetSource('note$n.wav'));
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),

            ],
          ),
        ),
      ),
    );
  }
}


// player.setSourceAsset('note1.wav');
// player.resume();