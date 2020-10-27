import 'package:flutter/material.dart';

class iamJnode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('I am Jnode'),
      ),
      body: Center(
        child: new Image.asset('assets/images/iamjnode/shiba-inu.png')
      ),
    );
  }
}
