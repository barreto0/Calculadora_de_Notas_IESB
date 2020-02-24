import 'package:caculadora_de_notas_iesb_v2/screens/input_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> tempoEspera() async {
    Duration duration = Duration(seconds: 2);
    Future.delayed(duration, () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InputScreen();
      }));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tempoEspera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Calculadora de notas IESB',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
