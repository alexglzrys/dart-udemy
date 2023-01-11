// librería para tareas de Entrada/Salida
import 'dart:convert';
import 'dart:io';

void main() {
  print('Programa Dart');

  // Salida de información (terminal en consola)
  // similar a print
  stdout.writeln('¿Cuál es tu nombre?');

  // La entrada de información puede ser nula, por tanto podemos tratarla de 2 formas
  // Indicar a Dart que la variable pude ser nula con: ?
  // Colocar un valor por defecto si la entrada es nula con: ??

  // Entrada de información (desde consola) - La información siempre se recupera de tipo String
  String nombre = stdin.readLineSync() ?? 'Desconocido';

  stdout.writeln('Lenguaje de programación favorito');
  String? lenguaje = stdin.readLineSync();

  print(
      'Bienvenido $nombre, tu lenguaje de programación favorito es $lenguaje');
}
