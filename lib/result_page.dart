import 'package:bmi_app/input_page.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/buttom_btn.dart';


class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult , required this.resultText, required this.interpretaion});

  final String bmiResult;
  final String resultText;
  final String interpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR',style: TextStyle(fontSize: 28))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                child: Center(child: Text('YOUR RESULT',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)),
              ),
          ),
          Expanded(
            flex: 5,
              child: Reusablecard(
                  colour: activeCardColor,
                  cardChild:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText,
                        style: TextStyle(fontSize: 50,color: Colors.greenAccent,fontWeight: FontWeight.bold),),
                      Text(bmiResult,
                        style: TextStyle(fontSize: 100,color: Colors.red,fontWeight: FontWeight.bold),),
                      Text(interpretaion,

                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  onPress: (){}),
          ),
          buttom_btn(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE')
        ],
      )
    );
  }
}
