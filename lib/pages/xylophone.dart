import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class xylophonePage extends StatelessWidget {
  //This is the place for defining functions
  //final" means single-assignment: a final variable or field must have an initializer.
  //Once assigned a value, a final variable's value cannot be changed. final modifies variables.
  void playNote(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playNote(soundNum);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.teal, soundNum: 5),
              buildKey(color: Colors.blue, soundNum: 6),
              buildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      );
  }
}