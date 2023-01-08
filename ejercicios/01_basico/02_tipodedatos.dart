void main() {
  // * Números

  // Declaración de variables de tipo numérico
  int edad = 37;
  double peso = 132.45;
  double cantidad = edad + peso;

  // var le inidca a Dart que debe inferir el tipo de dato
  var placas = 'LK4842-MC';

  // Null Saflty (Dart >= 2.12)
  // Es un agente en Dart que obliga a que todas las varibles tengan asignado un valor (en el momento de ser usadas)
  // En caso de que la variable pueda o no ser nula, se debe especificar explicitamente durante su declaración (mediante ?)
  String? doctorado;

  // Esta instrucción es válida, por que la variable doctorado puede ser nula
  print(doctorado);
  print(cantidad);

  // * Cadena de Caracteres

  // Declaración de variables de tipo cadena
  String nombre = 'Alejandro';
  String apellidos = "González Reyes";

  // El caracter de \ permite escapar caracteres especiales dento de una cadena de texto
  String marca = 'Editorial O\'Really';
  String nombre_completo = '$nombre $apellidos';

  // Las triples comillas permiten escribir cadenas de múltiples líneas
  String tyc = '''Términos y condiciones
  Este es un documento escrito en los primeros
  días del año 2023, dónde se especifican las cláusulas
  del contrato de arrendamiento
  ''';

  // Dart permite escribir cadenas en formato crudo, sin que sea necesario escapar caracteres especiales
  // solo basta anteponer el prefijo r antes del contenido de la cadena
  String raw = r'C:\\usuario\carpeta\flutter\$bin';

  print(nombre_completo);
  print(marca);
  print(tyc);
  print(raw);
}
