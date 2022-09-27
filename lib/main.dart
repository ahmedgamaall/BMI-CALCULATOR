import 'package:flutter/material.dart';
import 'compontenes/screens/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme:const AppBarTheme ( color: Color(0xff0A0E21)),
          primaryColor:const Color(0xff0A0E21),
        ),
      home: InputPage(),
      );

  }
}



