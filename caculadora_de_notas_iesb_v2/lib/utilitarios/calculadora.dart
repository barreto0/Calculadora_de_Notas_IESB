class Calculadora {
  double resultado;

  double calculaNota(double a1, double a2) {
    return resultado = (a1 * 0.4) + (a2 * 0.6);
  }

  double calculaP3(double a1, double a2) {
    double substP1 = ((5 - a2 * 0.6) / 0.4);
    double substP2 = ((5 - a1 * 0.4) / 0.6);
    if (substP1 > substP2) {
      return substP2;
    } else {
      return substP1;
    }
  }
}
