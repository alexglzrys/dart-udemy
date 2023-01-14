// Importar el archivo que contiene la clase Persona
import 'clases/persona.dart';

void main() {
  // Generar una instancia de la clase Persona
  final persona = new Persona();

  // Usar el operador en cascada para asignar valor a sus propiedades
  persona
    ..nombre = 'Alejandro'
    ..edad = 37;

  // Asignar un valor a una propiedad privada mediante un setter
  persona.bio = 'Programador Web FullStack';

  // Obtener el valor de una propiedad privada mediante un getter
  print(persona.bio);

  print(persona);
}
