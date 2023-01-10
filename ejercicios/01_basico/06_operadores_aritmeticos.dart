void main() {
  int numA, numB, suma, resta, multiplicacion, division_entera, residuo;
  double division;

  numA = 13;
  numB = 7;

  // Operadores aritméticos básicos
  suma = numA + numB;
  resta = numA - numB;
  multiplicacion = numA * numB;
  division = numA / numB;
  residuo = numA % numB;

  division_entera = numA ~/ numB;

  print('Suma: $suma');
  print('Resta: $resta');
  print('Multiplicación: $multiplicacion');
  print('División: $division');
  print('Residuo: $residuo');
  print('División entera: $division_entera');

  // Incrementos y decrementos
  int pre = 1;
  int post = 1;
  print('(Pre incremento): ${++pre} - (Post incremento): ${post++}');
  print('(Pre decremento): ${--pre} - (Post decremento): ${post--}');
}
