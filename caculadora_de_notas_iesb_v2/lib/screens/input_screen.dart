import 'package:caculadora_de_notas_iesb_v2/constantes/constantes.dart';
import 'package:caculadora_de_notas_iesb_v2/screens/aprovado_screen.dart';
import 'package:caculadora_de_notas_iesb_v2/screens/reprovado_screen.dart';
import 'package:flutter/material.dart';
import 'package:caculadora_de_notas_iesb_v2/widgets/flat_button_custom.dart';
import 'package:caculadora_de_notas_iesb_v2/utilitarios/calculadora.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double a1;
  double a2;
  double resultado;
  Calculadora calc = Calculadora();
  String mensagemPreenche = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Insira sua nota A1:',
                textAlign: TextAlign.center,
                style: kEstiloTextoInput,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: kEstiloTextField,
                  onChanged: (valor) {
                    a1 = double.parse(valor);
                    print(a1);
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Insira sua nota A2:',
                textAlign: TextAlign.center,
                style: kEstiloTextoInput,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: kEstiloTextField,
                  onChanged: (valor) {
                    a2 = double.parse(valor);
                  },
                ),
              ),
              FlatButtonCustom(
                legenda: 'Calcular!',
                apertado: () {
                  if (a1 != null && a2 != null) {
                    resultado = calc.calculaNota(a1, a2);
                    if (resultado >= 5.0 && resultado <= 10.0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AprovadoScreen(
                          resultado: resultado,
                        );
                      }));
                    } else if (resultado >= 0 && resultado < 5.0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ReprovadoScreen(
                          resultado: resultado,
                        );
                      }));
                    }
                  } else {
                    setState(() {
                      mensagemPreenche =
                          'Preencha ambos os campos corretamente!';
                    });
                  }

                  print(resultado);
                },
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                mensagemPreenche,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
