import 'package:flutter/material.dart';

class RoundIconButtom extends StatelessWidget {
  RoundIconButtom({required this.icon, required this.onpressd});

  final IconData icon;
  final dynamic onpressd;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onpressd,
    );
  }
}
