void main() {
  String personaA = 'Marcos';
  String personaB = 'Tomás';

  print('Son idénticos:  ${personaA == personaB ? 'Si' : 'No'}');
  print('Son nombres diferentes : ${personaA != personaB ? 'Si' : 'No'}');

  // El operador == en Dart es considerado como de identidad (verifica igualdad y tipo a la vez, como === en otros lenguajes)
  print('20' == 20);
  print(20 == 20);
  print('---------');

  int x = 20;
  int y = 30;

  print(x > y);
  print(x >= y);
  print(x < y);
  print(x <= y);
  print(x == y);

  // Operadores de tipo (util cuando la variable es de tipo dinámica o declarada con var)

  print('$x es un entero: ${x is int ? 'Si' : 'No'}');
  print('$personaA no es de tipo cadena: ${personaA is! String ? 'Si' : 'NO'}');
}
