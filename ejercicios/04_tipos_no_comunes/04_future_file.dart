import 'dart:io';

void main() {
  print('-- Inicio del programa');
  // Un archivo en Dart lo podemos leer de forma Asíncrona o Síncrona
  // La elección depende si deseamos apoyar al código bloqueante o no (como en Node JS)

  // Generar la ruta que apunta al archivo
  // Para programas Windows, colocar \\ como separador de directorio
  // String file_path = Directory.current.path + '/ejercicios/04_tipos_no_comunes/assets/personas.txt';

  String file_path =
      '${Directory.current.path}${Platform.pathSeparator}ejercicios${Platform.pathSeparator}04_tipos_no_comunes${Platform.pathSeparator}assets${Platform.pathSeparator}personas.txt';

  // Crear una referencia al archivo
  File file_ref = new File(file_path);

  // Leer el archivo de forma asíncrona
  Future<String> file = file_ref.readAsString();

  // Mostrar el contenido del archivo
  file.then((contenido) => print(contenido));

  print('-- Fin del programa');
}
