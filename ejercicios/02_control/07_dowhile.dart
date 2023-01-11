import 'dart:io';

void main() {
  String opcion;
  int contador = 0;
  do {
    contador++;
    stdout.writeln('Deseas incrementar el valor del contador (y/n)');
    opcion = stdin.readLineSync() ?? 'n';
  } while (opcion == 'y');
  print('Contador = $contador');
}
