import 'package:flutter/material.dart';

//ReusableCard creates a rounded-corner container that detects taps
class ReusableCard extends StatelessWidget {
  //Constructor for ReusableCard. @required marks a parameter as being compulsory
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  //final keyword is required as StatelessWidgets are immutable.
  final Color colour;
  final Widget cardChild;
  //can pass a function to ReusableCard to execute when ReusableCard is tapped with the onPress property
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
