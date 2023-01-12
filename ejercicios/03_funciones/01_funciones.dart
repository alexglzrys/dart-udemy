void main() {
  // Función integrada en Dart
  print('Funciones del lenguaje y personalizadas');

  miFuncion();

  String mensaje = saludar();
  print(mensaje);
}

// Función personalizada
void miFuncion() {
  print('Esta es mi función');
}

// Función con valor de retorno
String saludar() {
  return 'Bienvenido a Dart';
}
