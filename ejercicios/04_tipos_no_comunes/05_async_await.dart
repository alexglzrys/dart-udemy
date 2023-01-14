import 'dart:io';

void main() async {
  print('-- Inicio Programa --');

  // Declarar el path que apunta al archivo a leer
  final String DS = Platform.pathSeparator;
  String path =
      '${Directory.current.path}${DS}ejercicios${DS}04_tipos_no_comunes${DS}assets${DS}personas.txt';

  // Indicar a Dart que espere a que se resuleva la promesa para poder continuar
  // await requiere que este encapsulado en una función asíncrona (async)
  String contenido_archivo = await leerArchivo(path);
  print(contenido_archivo);

  print('-- Fin Programa--');
}

// Promesa que resuelve un String
// Contenido del archivo
Future<String> leerArchivo(String path) {
  File file_ref = new File(path);
  return file_ref.readAsString();
}
