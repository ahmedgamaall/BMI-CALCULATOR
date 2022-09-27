import 'package:flutter/material.dart';



class Resublecard extends StatelessWidget {
  Resublecard({required this.colour, required this.cardChild });

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: cardChild,
      margin:const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 190.0,
      width: 360.0,
    );
  }
}