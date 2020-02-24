import 'package:flutter/material.dart';
import 'package:caculadora_de_notas_iesb_v2/widgets/flat_button_custom.dart';

class AprovadoScreen extends StatelessWidget {
  final double resultado;
  AprovadoScreen({@required this.resultado});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Parabéns!',
              style: TextStyle(fontSize: 50.0, color: Colors.white),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Sua nota final foi: ',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            Text(
              resultado.toStringAsPrecision(3),
              style: TextStyle(
                fontSize: 150.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'E você foi aprovado!',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            FlatButtonCustom(
              legenda: 'Calcular novamente',
              apertado: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
