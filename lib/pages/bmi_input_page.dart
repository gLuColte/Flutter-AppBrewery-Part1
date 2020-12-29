import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_reusable_card.dart';
import 'bmi_icon_content.dart';
import 'bmi_constants.dart';

enum Gender {male, female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender; //using Enums + Tenary
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child:
                ReusableCard( // Making onPress Function then input into Gesture Detector
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,
                  cardChild: IconContent(icon: FontAwesomeIcons.mars, text: 'MALE',),
                )
              ),
              Expanded(child:
                ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour,
                  cardChild: IconContent(icon: FontAwesomeIcons.venus, text: 'FEMALE',),
                )
              ),
            ],
          )),
          Expanded(child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0XFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
          ),),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(weight.toString(), style: kNumberTextStyle,),
                          Text('kg', style: kLabelTextStyle,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },),
                          SizedBox(width: 10.0,),
                          RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
              ),),
              Expanded(child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Age',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(age.toString(), style: kNumberTextStyle,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){
                            setState(() {
                              age--;
                            });
                          },),
                          SizedBox(width: 10.0,),
                          RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      )
                    ],
                  ),
              ),),
            ],
          )),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: Text('Calculate your BMI', style: kLabelTextStyle,),
          )
        ],
      )
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4F5E),
    );
  }
}



