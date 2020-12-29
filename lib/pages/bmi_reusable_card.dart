import 'package:flutter/material.dart';
import 'bmi_constants.dart';
// Custom Widget Created
class ReusableCard extends StatelessWidget {

  // Constructor takes input for class - note
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour; // const vs final - To do with compile time, former creates during compile time, latter is AFTER
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}