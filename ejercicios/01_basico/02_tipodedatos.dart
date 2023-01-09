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

  // * Booleanos

  bool estaLogeado = true;
  bool esAdmin = false;
  bool? estudia;

  print(estaLogeado);
  print(!esAdmin);

  /**
   * 
   * En Dart el símbolo ! tiene dos significados
   * En boolenos como corto circuito, es decir la negación tradicional (!variable)
   * Para especificar a Dart que confie en nosotros, pues la variable contiene un valor en ese punto (variable!). Generalmente se les vé en propiedades de objetos o mapas
   * 
   */

  // Null Saflty
  // Para comparar si una variable es o no nula, se debe comparar explicitamente
  if (estudia != null) {
    print(estudia);
  }

  // * Listas

  // Las listas en Dart son equivalentes a los arreglos en otros lenguajes de programación
  // Pueden ser de un solo tipo de dato, o de tipo genérico (Object).
  // En Dart todo es un objeto
  // Las listas son base 0

  List<String> heroes = [
    'Goku',
    'Superman',
    'Batman',
    'Iron Man',
    'Hombre Araña'
  ];
  List<Object> generico = [
    'Lunes',
    true,
    511,
    ['Vegueta', 'Trunks'],
    false,
    48.512
  ];
  print(heroes);
  print(generico);
  print(
      'Mi heroe favorito es ${heroes[0]}, y mi villano es ${(generico[3] as List)[0]}');

  // * Sets
  // Comparten la mayoría de los métodos de las listas
  // Su principal diferencia es que su contenido no se puede repetir

  Set<String> villanos = {
    'Vegueta',
    'Napa',
    'Radix',
    'Frezeer',
    'Dodoria',
    'Saabon'
  };

  print(villanos);

  villanos.add('Giniu');
  villanos.add('Androide 15');
  villanos.add('Dodoria');
  villanos.add('Napa');

  print(villanos);

  List<String> lenguajes = [
    'PHP',
    'JavaScript',
    'Dart',
    'HTML',
    'PHP',
    'CSS',
    'Dart',
    'Java'
  ];
  print(lenguajes);
  // Convertir una lista a un conjunto. Esto ayuda a retirar todo el contenido duplicado
  print(lenguajes.toSet());

  // * Mapas
  // Los mapas son equivalentes a los diccionarios u objetos literales en otros lenguajes de programación
  // Map<tipo_dato_llave, tipo_dato_valor>

  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y dinero',
    'nivel': 9000,
  };

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Goku', 'poder': 'Super Sayayin', 'nivel': 75000});
  //capitan.addAll(ironman);

  // Acceder a valores de propiedades
  print('Iron Man en realidad es el Sr. ${ironman['nombres']}');

  print(ironman);
  print(capitan);
}
