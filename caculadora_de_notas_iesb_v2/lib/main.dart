import 'package:flutter/material.dart';
import 'screens/input_screen.dart';

void main() => runApp(AppCalcIesbV2());

class AppCalcIesbV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Notas Iesb',
      theme: ThemeData(
        primaryColor: Color(0xFFD92936),
        scaffoldBackgroundColor: Color(0xFFD92936),
        fontFamily: 'PatuaOne',
      ),
      home: InputScreen(),
    );
  }
}
