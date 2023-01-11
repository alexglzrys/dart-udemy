import 'dart:io';

void main() {
  // Ciclo For
  for (int i = 0; i < 10; i++) {
    print('Iteración: $i');
  }

  // Tabla de multiplicar
  stdout.writeln('Ingresa un número entero');
  int numero = int.parse(stdin.readLineSync() ?? '0');

  print('---- Tabla de multiplar ----');
  for (int contador = 1; contador <= 10; contador++) {
    // las llaves ${ } permiten procesar instrucciones válidas de Dart
    print('$numero x $contador = ${numero * contador}');
  }
}
