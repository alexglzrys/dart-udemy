// Importar el archivo que contiene la clase Persona
import 'clases/persona.dart';

void main() {
  // Generar una instancia de la clase Persona
  //final persona = new Persona();
  //final persona = new Persona(38, 'Alejandro González');
  //final persona = new Persona(edad: 35);
  final persona = new Persona(edad: 35, nombre: 'Junior');

  // Usar constructores con nombre para generar instancias de clase
  final persona2 = new Persona.tecnologia(nombre: 'Juana');
  final persona3 = new Persona.sinior(nombre: 'Valeria');

  // Usar el operador en cascada para asignar valor a sus propiedades
  /*persona
    ..nombre = 'Alejandro'
    ..edad = 37;
  */

  // Asignar un valor a una propiedad privada mediante un setter
  persona.bio = 'Programador Web FullStack';

  // Obtener el valor de una propiedad privada mediante un getter
  print(persona.bio);

  print(persona);
  print(persona2);
  print(persona3);
}
