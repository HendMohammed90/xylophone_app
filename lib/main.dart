import 'package:flutter/material.dart';
import 'package:username_generator/username_generator.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  //this for userName Package Generator;
  var generator = UsernameGenerator();
  final player = AudioCache();
  void playSound(int num) {
    player.play('note${num}.wav');
    print('Button ${num} Clicked');
  }

  Expanded buildItem({required Color color, required int number}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        child: Text(
          'Click to Lestin',
          style: TextStyle(
            fontFamily: 'Shizuru-Regular',
            color: color,
            fontSize: 45.0,
            // fontFamily: 'Shizuru-Regular',
          ),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App ',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text(generator.generateRandom()),
              buildItem(color: Colors.green, number: 1),
              buildItem(color: Colors.blue, number: 2),
              buildItem(color: Colors.red, number: 3),
              buildItem(color: Colors.pink, number: 4),
              buildItem(color: Colors.orange, number: 5),
              buildItem(color: Colors.yellow, number: 6),
              buildItem(color: Colors.blueAccent, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
