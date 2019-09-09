import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './background_card.dart';

const bottomBackgroundHeight = 100.0;
const inactiveCardColor = Color(0xFF1D1F32);
const activeCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFD83558);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int heightValue = 170;
  int weightValue = 60;
  int ageValue = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: BackgroundCard(
                      colour: selectedGender == Gender.male
                          ? inactiveCardColor
                          : activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.male,
                            size: 70,
                            color: Color(0xFF8B8C95),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              color: Color(0xFF8B8C95),
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: BackgroundCard(
                      colour: selectedGender == Gender.female
                          ? inactiveCardColor
                          : activeCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.female,
                            size: 70,
                            color: Color(0xFF8B8C95),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                              color: Color(0xFF8B8C95),
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BackgroundCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: TextStyle(
                      color: Color(0xFF8B8C95),
                      fontSize: 22,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '$heightValue',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        ' CM',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8B8C95),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: heightValue.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double newValue) {
                      setState(() {
                        heightValue = newValue.toInt();
                      });
                    },
                  )
                ],
              ),
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: BackgroundCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: TextStyle(
                            color: Color(0xFF8B8C95),
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$weightValue',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingActionButton(
                              child: Icon(FontAwesomeIcons.minus),
                              backgroundColor: Color(0xFF1D1F31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  weightValue--;
                                });
                              },
                            ),
                            // SizedBox(width: 30,),
                            FloatingActionButton(
                              child: Icon(FontAwesomeIcons.plus),
                              backgroundColor: Color(0xFF1D1F31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  weightValue++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BackgroundCard(
                    colour: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: TextStyle(
                            color: Color(0xFF8B8C95),
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          '$ageValue',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingActionButton(
                              child: Icon(FontAwesomeIcons.minus),
                              backgroundColor: Color(0xFF1D1F31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  ageValue--;
                                });
                              },
                            ),
                            // SizedBox(width: 30,),
                            FloatingActionButton(
                              elevation: 1,
                              child: Icon(FontAwesomeIcons.plus),
                              backgroundColor: Color(0xFF1D1F31),
                              foregroundColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  ageValue++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
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
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
            onTap: () {
            },
          )
        ],
      ),
    );
  }
}
