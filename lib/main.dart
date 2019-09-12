import 'package:flutter/material.dart';

import './Screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D21),
        scaffoldBackgroundColor: Color(0xFF0A0D21), 
        sliderTheme: SliderTheme .of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E98),
          thumbColor:  Color(0xFFEB1555),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
          overlayColor: Color(0x29EB1555)
        )
      ),
      home: InputPage(),
    );
  }
}

