import 'package:flutter/material.dart';
import 'bmi_constants.dart';
import 'bmi_reusable_card.dart';
import 'bmi_bottom_button.dart';
import 'bmi_calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpretation, @required this.resultText, @required this.bmi_result});

  final String bmi_result;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: kTileTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi_result,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(buttonTitle: 'RE-CALCULATE', onTap: (){
              Navigator.pop(context);
            },)
          )
        ],
      )
    );
  }
}
