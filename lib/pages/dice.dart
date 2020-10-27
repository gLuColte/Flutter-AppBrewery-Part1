import 'package:flutter/material.dart';

import 'dart:math';

class diceMainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dice'),
          ),
          body: Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:Container(
                    child: DicePage(),
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    child:DicePage2(),
                  ),
                ),
              ],
            ),
          )
      );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('assets/images/dice/dice$leftDiceNumber.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('assets/images/dice/dice$rightDiceNumber.png'),
              )
          )
        ],
      ),
    );
  }
}

class DicePage2 extends StatefulWidget {
  @override
  _DicePage2State createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('assets/images/dice/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('assets/images/dice/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

