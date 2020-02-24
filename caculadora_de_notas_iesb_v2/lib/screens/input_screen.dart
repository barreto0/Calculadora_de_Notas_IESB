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
  String mensagemPreenche = '';

  TextEditingController controleNotaA1 = TextEditingController();
  TextEditingController controleNotaA2 = TextEditingController();

  void resetCampos() {
    setState(() {
      a1 = null;
      a2 = null;
      resultado = null;
      mensagemPreenche = '';
      controleNotaA1.text = '';
      controleNotaA2.text = '';
    });
  }

  void nota() {
    Calculadora calc = Calculadora();
    if (a1 != null && a2 != null) {
      resultado = calc.calculaNota(a1, a2);
      if (resultado >= 5.0 && resultado <= 10.0) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return AprovadoScreen(
            resultado: resultado,
          );
        }));
      } else if (resultado >= 0 && resultado < 5.0) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ReprovadoScreen(
            resultado: resultado,
            p3: calc.calculaP3(a1, a2),
          );
        }));
      } else {
        setState(() {
          mensagemPreenche = 'Preencha ambos os campos corretamente!';
        });
      }
    } else {
      setState(() {
        mensagemPreenche = 'Preencha ambos os campos corretamente!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //bloqueia o botao voltar do sistema
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: resetCampos,
            )
          ],
          elevation: 0.0,
        ),
        body: Center(
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
                    controller: controleNotaA1,
                    keyboardType: TextInputType.number,
                    decoration: kEstiloTextField,
                    onChanged: (valor) {
                      a1 = double.parse(valor);
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
                    controller: controleNotaA2,
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
                    nota();
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
      ),
    );
  }
}
