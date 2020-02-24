import 'package:flutter/material.dart';
import 'package:caculadora_de_notas_iesb_v2/widgets/flat_button_custom.dart';

class ReprovadoScreen extends StatelessWidget {
  final double resultado;
  final double p3;
  ReprovadoScreen({@required this.resultado, this.p3});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sua nota final foi: ',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              resultado.toStringAsPrecision(3),
              style: TextStyle(
                fontSize: 120.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'E você foi reprovado',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            Text(
              'Quanto precisa tirar na P3: ',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            Text(
              p3.toStringAsPrecision(3),
              style: TextStyle(
                fontSize: 120.0,
                color: Colors.white,
              ),
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
