// Estructura básica de una clase en Dart
class Persona {
  // Propiedades
  // Por defecto en Dart todas las propiedades son píblicas
  String? nombre;
  int? edad;
  // Propiedad privada: En dart se identifican con un guión bajo
  String? _bio;

  // Getters y Setters

  // Constructores

  // Métodos

  @override
  String toString() {
    // Método que se ejecuta automáticamente cuando se imprime directametne una instancia de esta clase
    return '$nombre es $_bio y tiene $edad años';
  }
}
