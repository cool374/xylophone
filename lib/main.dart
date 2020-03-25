import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }
  Expanded buildKey({int j,Color color}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(j);
        },
        child: Text(''),
        color: color,
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
            children: <Widget>[
              buildKey(j: 1,color: Colors.red),
              buildKey(j: 2,color: Colors.orange),
              buildKey(j: 3,color: Colors.yellow),
              buildKey(j: 4,color: Colors.green),
              buildKey(j: 5,color: Colors.teal),
              buildKey(j: 6,color: Colors.blue),
              buildKey(j: 6,color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
