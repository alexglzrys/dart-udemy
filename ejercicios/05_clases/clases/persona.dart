// Estructura básica de una clase en Dart
class Persona {
  // Propiedades
  String? nombre;
  int? edad;
  String? bio;

  // Getters y Setters

  // Constructores

  // Métodos

  @override
  String toString() {
    // Método que se ejecuta automáticamente cuando se imprime directametne una instancia de esta clase
    return '$nombre es $bio y tiene $edad años';
  }
}
