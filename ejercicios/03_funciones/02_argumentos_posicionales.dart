void main() {
  // Enviar argumentos a la función - es importante la posición
  // Por posición se entiende el orden en que son recibidos dichos argumentos en la declaración de la función
  saludar('Hola', 'Alejandro');
  saludar('Hi', 'Vanesa', 15);
  saludar('Holi', 'Raciel', null, 'C++');
  saludar('Hello', 'Maria', 28, 'Dart');
}

// Funciones que reciben parámetros posicionales
// Parámetros opcionales siempre se definen al final encerrados entre corchetes
// Parémetros opcionales pueden ser nulos, o tener un valor por defecto
void saludar(String saludo, String nombre,
    [int? edad, String lenguaje = 'PHP']) {
  String mensaje = '$saludo $nombre';
  if (edad != null) mensaje += ' tienes $edad años y';
  mensaje += ' tu lenguaje de programación favorito es $lenguaje';
  print(mensaje);
}
