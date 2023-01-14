// Estructura básica de una clase en Dart
class Persona {
  // * Propiedades
  // Por defecto en Dart todas las propiedades son píblicas
  String? nombre;
  int? edad;
  // Propiedad privada: En dart se identifican con un guión bajo
  String? _bio;

  // * Getters y Setters
  // Permiten establecer o recuperar información de las propiedades privadas de esta clase
  // El cuerpo del método puede estar encerrado entre llaves, o en una sola linea mediante arrow function
  // Los getters siempre devuelven un valor, por tanto es importante especificar el tipo de retorno
  String get bio {
    // _bio puede llegar a tener un valor nulo, por tanto, coloco un valor por defecto
    return _bio?.toUpperCase() ?? '';
  }

  // Los setters reciben un valor, por tanto hay que especificar el tipo de dato esperado y asignarlo a la propiedad privada en cuestión
  set bio(String texto) => _bio = texto;

  // * Constructores
  // Una clase en Dart puede carecer de constructor explicito

  // Constructor básico sin paso de parámetros
  /*Persona() {
    print('Objeto instanciado');
  }*/

  // Constructor básico con paso de parámetros posicionales obligatorios
  /*Persona(int edad, String nombre) {
    this.edad = edad;
    this.nombre = nombre;
  }*/

  // Constructor básico con paso de parámetros posicionales obligatorios
  // Técnica de inyección directa de valores a propiedades
  //Persona(this.edad, this.nombre);

  // Constructor básico con paso de parámetros por nombre (por defecto estos son opcionales)
  //Persona({this.edad, this.nombre});

  // Constructor básico con paso de parámetros por nombre (con valores por defecto)
  //Persona({this.edad = 0, this.nombre = 'Desconocido'});

  // Constructor básico con paso de parámetros por nombre obligatorios
  Persona({required this.edad, required this.nombre});

  // ? Constructores con nombre
  // Permiten simular a la sobrecarga de constructores presentes en lenguajes como JAVA
  // En Dart se usa bastante en patrones Singleton
  Persona.tecnologia({required this.nombre, this.edad = 30}) {
    _bio = 'Tecnologo';
  }
  Persona.sinior({required this.nombre}) {
    edad = 40;
    _bio = 'Experto en lo que hace';
  }

  // * Métodos
  // Método que se ejecuta automáticamente cuando se imprime directametne una instancia de esta clase
  @override
  String toString() => '$nombre es $_bio y tiene $edad años';
}
