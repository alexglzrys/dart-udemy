void main() {
  // Invocar métodos y propiedades estáticas de la clase Herramientas
  Herramientas.imprimirSaludo();
  print('Marca ${Herramientas.marca}');
  Herramientas.listado.forEach(print);
}

class Herramientas {
  // * Propiedades estáticas
  // Pertenecen a las clase, no a los objetos (su acceso es mediante la clase)
  // Deberían ser inmutables, ya que de lo contario, sería muy dificil detectar el punto dónde fueron modificados
  static const List<String> listado = [
    'Martillo',
    'Desarmador',
    'Pinzas',
    'Llave Inglesa'
  ];

  static final marca = 'Duplex S.A';

  // * Métodos estáticos
  // Pertenecen a la clase y no a los objetos
  static void imprimirSaludo() => print('Hola mundo desde una clase en Dart');
}
