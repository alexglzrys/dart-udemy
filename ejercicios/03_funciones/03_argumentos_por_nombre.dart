void main() {
  saludar(nombre: 'Alejandro', apellidos: 'González Reyes');
  saludar(nombre: 'Mariela', apellidos: 'Rubalcaba Noroña', edad: 19);

  print(calcular(numA: 8, numB: 17));
  print(calcular(numA: 45, numB: 3, operacion: '-'));
  print(calcular(numA: 4.9, numB: 2.8, operacion: '*'));

  mensaje('Hola', nombre: 'Mariana');
  mensaje('Bienvenido', nombre: 'Alejandro', lenguaje: 'PHP', experiencia: 8);
  mensaje('Hey!', nombre: 'Vanesa', experiencia: 2);
}

/**
 * !IMPORTANTE
 * Para Dart el tipo de dato NULL es diferente a un BOOLEAN
 * Esto se debe a la nueva implementaciòn de Null Safety
 * 
 * Por tanto, es importante hacer la comparaciòn explicita de un valor que puede ser nulo
 * if (variable == null)  -   if (variable != null) 
 * 
 * A diferencia de otros lenguajes de programaciòn como JAVA, JS, PHP
 * que NULL puede ser interpreta como sin valor o FALSE
 */

// Función que recibe parámetros por nombre
// Por defecto, los parámetros por nombre son opcionales. Para indicar lo contrario hay que colocar el keyword required
void saludar({required String nombre, required String apellidos, int? edad}) {
  String mensaje = 'Hola $nombre $apellidos';
  if (edad != null) {
    mensaje += ' tu tienes $edad años';
  }
  print(mensaje);
}

// Parámetros con nombre y con valor por defecto
// Función que retorna un valor de tipo String
String calcular(
    {required double numA, required double numB, String operacion = '+'}) {
  switch (operacion) {
    case '+':
      return 'Suma $numA + $numB = ${numA + numB}';
    case '-':
      return 'Resta $numA - $numB = ${numA - numB}';
    case '*':
      return 'Multiplicación $numA * $numB = ${numA * numB}';
    case '/':
      return 'División $numA / $numB = ${numA / numB}';
    default:
      return 'Operación no válida';
  }
}

// Función con parámetros posicionales y por nombre
// Posicionales siempre se definen al inicio
// Por nombre, deben ser encapsulados entre corchetes. Aplica las mismas reglas (pueden ser requeridos, opcionales o con valor por defecto)
// Se recomienda evitar este tipo de funciones, ya que su uso puede ser confuso si no cuentan con una buena documentación
void mensaje(String saludo,
    {required String nombre, String lenguaje = 'Dart', int? experiencia}) {
  String mensaje =
      '$saludo $nombre tu lenguaje de programación favorito es $lenguaje';
  if (experiencia != null)
    mensaje += ' y tienes $experiencia años de experiencia';
  else
    mensaje += ' y estas en proceso de aprendizaje';

  print(mensaje);
}
