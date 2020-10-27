import 'package:flutter/material.dart';
import 'dart:math';

class magicEightPage extends StatefulWidget {
  @override
  _magicEightPageState createState() => _magicEightPageState();
}

class _magicEightPageState extends State<magicEightPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNum = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('assets/images/magicEight/ball$ballNum.png'),
        ),
      ),
    );
  }
}
