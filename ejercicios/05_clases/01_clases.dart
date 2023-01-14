void main() {
  // Generar una instancia de la clase Persona
  final persona = new Persona();
  persona.nombre = 'Alejandro';
  persona.edad = 37;
  persona.bio = 'Programador Web';

  print(persona);
}

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
    return '$nombre - $edad - $bio';
  }
}
