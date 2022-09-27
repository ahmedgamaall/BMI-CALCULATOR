import 'package:bm_cl/compontenes/resuble_card.dart';
import 'package:bm_cl/compontenes/screens/result_page.dart';
import 'package:bm_cl/compontenes/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../bottum_button.dart';
import '../../constsn.dart';
import '../icon_cntent.dart';
import 'result_page.dart';
import 'package:bm_cl/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;
  int higth = 180;
  int wegith = 40;
  int age = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kPrimeryColour,
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  child: Resublecard(
                    colour: selectGender == Gender.male
                        ? kctiveCardColour
                        : knActiveCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {

                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  child: Resublecard(
                    colour: selectGender == Gender.female
                        ? kctiveCardColour
                        : knActiveCardColor,
                    cardChild: iconContent(
                        icon: FontAwesomeIcons.venus, lable: 'FEMALE'),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: GestureDetector(
            child: Resublecard(
              colour: kctiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    'HEIGHT',
                    style: lableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        higth.toString(),
                        style: kNumperTextStyle,
                      ),
                     const Text(
                        'cm',
                        style: lableTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor:const Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: kotomContainerColor,
                      overlayColor:const Color(0x29EB1555),
                      thumbShape:
                       const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    ),
                    child: Slider(
                      value: higth.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          higth = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Resublecard(
                    colour: kctiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text(
                          'WEIGHT',
                          style: lableTextStyle,
                        ),
                        Text(
                          wegith.toString(),
                          style: kNumperTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtom(
                              icon: FontAwesomeIcons.minus,
                              onpressd: () {
                                setState(() {
                                  wegith--;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            RoundIconButtom(
                              icon: FontAwesomeIcons.plus,
                              onpressd: () {
                                setState(() {
                                  wegith++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Resublecard(
                  colour: kctiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const  Text(
                        'AGE',
                        style: lableTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumperTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButtom(
                            icon: FontAwesomeIcons.minus,
                            onpressd: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                         const SizedBox(width: 10.0,),
                          RoundIconButtom(
                            icon: FontAwesomeIcons.plus,
                            onpressd: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          BottomButton(
            titilebouttom: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(height: higth, weight: wegith);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calc.CalculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



