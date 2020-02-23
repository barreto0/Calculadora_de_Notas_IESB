import 'package:flutter/material.dart';

class ReprovadoScreen extends StatelessWidget {
  final double resultado;
  ReprovadoScreen({@required this.resultado});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(
            'Sua nota final foi: ',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(resultado.toString()),
        ],
      ),
    );
  }
}
