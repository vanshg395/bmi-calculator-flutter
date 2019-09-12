import 'package:flutter/material.dart';

import '../Widgets/background_card.dart';
import '../constants.dart';

class Result extends StatelessWidget {
  final String resultValue;
  final String bmiValue;
  final String interpretation;

  Result(this.resultValue, this.bmiValue, this.interpretation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BackgroundCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultValue.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                  Text(
                    bmiValue,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: bottomContainerColor,
              width: double.infinity,
              height: bottomBackgroundHeight,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
