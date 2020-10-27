
import 'package:flutter/material.dart';
import 'miCard.dart';
import 'iamjnode.dart';
import 'dice.dart';
import 'magicEight.dart';
import 'xylophone.dart';
import 'quizzler.dart';

class mainPage extends StatelessWidget {
  ListTile buildTile({BuildContext context, Text title, Text subtitle, Icon icon, Widget page}){
    return ListTile(
      title: title,
      subtitle: subtitle,
      leading: icon,
      trailing: Icon(Icons.arrow_forward, color: Colors.blue),
      onTap: (){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('App Brewery Tutorials'),
          ),
        ),
        body: ListView(
          children: <Widget> [
            buildTile(context: context, title: Text('I am Jnode'), subtitle: Text('First Jnode App'), icon: Icon(Icons.verified_user, color: Colors.blue), page: iamJnode()),
            buildTile(context: context, title: Text('miCard'), subtitle: Text('Personal Detail list app'), icon: Icon(Icons.verified_user, color: Colors.red), page: miCard()),
            buildTile(context: context, title: Text('Dice'), subtitle: Text('App containing multiple dices'), icon: Icon(Icons.verified_user, color: Colors.teal), page: diceMainPage()),
            buildTile(context: context, title: Text('Magic 8'), subtitle: Text('Magic 8 App for questions'), icon: Icon(Icons.verified_user, color: Colors.yellow), page: magicEightPage()),
            buildTile(context: context, title: Text('Xylophone App'), subtitle: Text('App for playing music'), icon: Icon(Icons.verified_user, color: Colors.purple), page: xylophonePage()),
            buildTile(context: context, title: Text('Quizzler App'), subtitle: Text('App full of quiz'),  icon: Icon(Icons.verified_user, color: Colors.pink), page: Quizzler()),


          ],
        ),
      );
  }
}
