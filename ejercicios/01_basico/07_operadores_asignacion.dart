void main() {
  // Operadores de asignación
  double base = 10;
  double? alternativo;

  print('Base inicial: $base');
  base += 5;
  print('Base + 5: $base');
  base -= 1;
  print('Base - 1: $base');
  base *= 3;
  print('Base * 3: $base');
  base /= 2;
  print('Base / 2: $base');

  // Asignar el valor únicamente si la variable es nula (operador || en JavaScript)
  alternativo ??= 20.0;
  print(alternativo);

  // Operador ternario
  int actual = 20;
  String respuesta = actual > 25
      ? 'La variable es superior a 25'
      : 'La variable es inferior a 25';
  print(respuesta);

  // Asignar a total el valor de base, en caso de ser nula, asignar el valor de alternativo, en caso de ser nula, asignar el valor de 100.0
  double total = base ?? alternativo ?? 100.0;
  print(total);
}
