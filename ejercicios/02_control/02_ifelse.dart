import 'dart:io';

void main() {
  stdout.writeln('¿Cuál es tu edad?');
  // Parsear los datos de entrada a tipo entero
  int edad = int.parse(stdin.readLineSync() ?? '0');

  // Verificar la mayoría de edad
  if (edad >= 18) {
    stdout.writeln('Eres mayor de edad');
  } else {
    stdout.writeln('Eres menor de edad');
  }

  // Condición del tipo if - else if - else
  if (edad >= 21) {
    stdout.writeln('Eres ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }
}
