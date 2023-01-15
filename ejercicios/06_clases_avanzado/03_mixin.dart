// * Mixin
/*
Son contenedores de funciones definidas que pueden inyectarse
a cualquier clase para que herede dichas caracteristicas
Son una alternativa a la herencia multiple
Su equivalente a otros lenguajes como PHP sería a los Traits
*/

mixin Logger {
  void imprimirLog(String texto) {
    final now = DateTime.now();
    print('$now ::: $texto');
  }
}

// Clase abstracta que usa el mixin Logger
// Por tanto hereda todos sus métodos
// Si la clase hereda mas de un mixin, se paran por comas - with Logger, Otro, etc
abstract class Universo with Logger {
  late String nombre;

  Universo(this.nombre) {
    print('Universo inicializado');
  }
  void mensaje() {
    print('Soy el planeta $nombre y formo parte del universo');
  }
}

class Planeta extends Universo {
  Planeta({required String nombre}) : super(nombre) {
    print('Planeta creado');
  }
}

void main() {
  // Crear un planeta
  final mercurio = new Planeta(nombre: 'Mercurio');
  final venus = new Planeta(nombre: 'Venus');
  final tierra = new Planeta(nombre: 'Tierra');

  mercurio.mensaje();
  venus.mensaje();
  tierra.mensaje();

  // Invocar método heredado desde el mixin
  mercurio.imprimirLog('Mensaje enviado desde Mercurio');
  venus.imprimirLog('Llamando a central Venus');
  tierra.imprimirLog('Houstom, llamando desde el planeta Tierra');
}
