import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {@required this.colour, this.cardChild, this.onPress, this.padding});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  //final double padding;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        //padding: EdgeInsets.only(left: padding, right: padding),
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
