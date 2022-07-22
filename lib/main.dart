import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());


class Xylophone extends StatelessWidget {

  // Plays the Sounds
  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required int soundNumber, required Color color}) =>
      Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(soundNumber:1, color:Colors.red),
                buildKey(soundNumber:2, color:Colors.orange),
                buildKey(soundNumber:3, color:Colors.yellow),
                buildKey(soundNumber:4, color:Colors.green),
                buildKey(soundNumber:5, color:Colors.teal),
                buildKey(soundNumber:6, color:Colors.blue),
                buildKey(soundNumber:7, color:Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

