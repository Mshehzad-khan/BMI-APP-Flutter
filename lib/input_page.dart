import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'result_page.dart';
import 'buttom_btn.dart';
import 'round_icon_btn.dart';
import 'package:bmi_app/calculator_brain.dart';


const activeCardColor = Colors.blueGrey;
const inactiveCardColor = Colors.red
;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 80;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 28),),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: const Icon_Content(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: Reusablecard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardChild: const Icon_Content(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      colour: activeCardColor,
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('HEIGHT',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                              const Text('cm',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold))
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.white54,
                              thumbColor: Colors.pink,
                              thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 16),
                            overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),),
                            child:
                            Slider(value: (height.toDouble()),
                                min: 120,
                                max: 220,
                                onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Reusablecard(
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                          Text(weight.toString(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(width: 12),
                              RoundIconButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus),
                              RoundIconButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus),
                            ],
                          ),
                        ],
                      ),
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: Reusablecard(
                      onPress: () {},
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                          Text(age.toString(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus)
                            ],
                          )
                        ],
                      ),
                      colour: activeCardColor),
                  ),
                ],
              ),
              buttom_btn(
                buttonTitle: 'CALCULATE',
                onTap: (){

                  CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>
                     ResultPage(
                       bmiResult: calc.calculateBMI(),
                       resultText: calc.getResult(),
                       interpretaion: calc.getinterpretation(),

                     ),
                 ),
                 );
                }
              ),
            ],
        ),
    );
  }
}




