import 'package:flutter/material.dart';

import '../constsn.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.titilebouttom, required this.onTap});

  final dynamic onTap;
  final String titilebouttom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            titilebouttom,
            style: kLargButtom,
          ),
        ),
        color: kotomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}