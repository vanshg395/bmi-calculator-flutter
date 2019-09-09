import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  BackgroundCard({@required this.colour, @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
