import 'package:bmi_calculator/container1.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.advice1,
  });
  final String bmiResult;
  final String resultText;
  final String advice1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result :', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container1(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(resultText, style: resultTextStyle),
                  Text(bmiResult, style: kBMITextStyle),
                  Text(
                    advice1,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10),

              height: bottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text('RE-CALCULATE', style: klargeButtonStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const klargeButtonStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
const kTitleTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
const kBodyTextStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
const kBMITextStyle = TextStyle(fontSize: 100, fontWeight: FontWeight.bold);
const resultTextStyle = TextStyle(
  fontSize: 22,
  color: Colors.green,
  fontWeight: FontWeight.bold,
);
