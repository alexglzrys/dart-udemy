void main() {
  // * En Dart todo es un Objeto
  // * En Dart todo es case-sensitive
  // * En Dart todo es index 0 (arreglos comienzan en 0)

  String nombre = 'Alejandro';
  String apellidos = 'González Reyes';

  String nombre_completo = '$nombre $apellidos';

  // Propiedades y métodos de los String

  // Longitud de caracteres
  print('Length ${nombre_completo.length} :: $nombre_completo');
  // Verificar si contiene el caracter o palabra
  print(
      'Contains González ${nombre_completo.contains('González')} :: $nombre_completo');
  // Verificar si termina con el caracter o palabra
  print(
      'Endwiths Morales ${nombre_completo.endsWith('Morales')} :: $nombre_completo');
  // Rellenar a la izquierda haciendo uso de los caracteres si la longitud de la cadena original es menor al especificado, hasta llegar al ancho especificado
  print(
      'PadLeft (30, .) ${nombre_completo.padLeft(30, '.')} :: $nombre_completo');

  // Operadores en cadenas [] y *

  // Recuperar el caracter situado en la posición 8
  print('Operador [8] ${nombre_completo[8]} :: $nombre_completo');
  // Multiplicar tantas veces la cadena
  print('Operador * ${'-' * 10} :: -');

  // Reemplazar los caractes (resultado de una expresión regular) en la cadena original
  print(
      'ReplaceAll e por - ${nombre_completo.replaceAll('e', '-')} :: $nombre_completo');
  // Subcadena
  print(
      'Substring(0, 6) ${nombre_completo.substring(0, 6)} :: $nombre_completo');
  // Buscar posición de un caracter en la cadena
  print('IndexOf(á) ${nombre_completo.indexOf('á')} :: $nombre_completo');
  // Convertir cadena a lista con base a un patrón
  print('Split(' ') ${nombre_completo.split(' ')} :: $nombre_completo');

  // Convertir el último caracter de la cadena a mayúscula
  String ultimo = nombre_completo[nombre_completo.length - 1].toUpperCase();
  String subcadena = nombre_completo.substring(0, nombre_completo.length - 1);
  print('Ultima letra en mayúscula - $subcadena$ultimo :: $nombre_completo');
}
