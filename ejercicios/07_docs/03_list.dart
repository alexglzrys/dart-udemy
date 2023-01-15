void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<double>? flotantes;
  List<int> repetidos = [1, 2, 3, 2, 3, 7, 4, 2, 5, 2, 7, 9];
  List<String> nombres = [
    'María',
    'Demetrio',
    'Alejandro',
    'Mongo',
    'Solovino',
    'Kuka',
    'Miguel'
  ];

  // Propiedades y métodos de las listas

  // Longitud
  print('Length ${numeros.length} :: $numeros');
  // Primer elemento
  print('First ${numeros.first} :: $numeros');
  // Último elemento
  print('último ${numeros.last} :: $numeros');
  // Buscar elemento por una posición específica
  print('Posición[3] ${numeros[3]} :: $numeros');
  // Verificar si la lista esta vacía contenido
  print('isEmpty ${numeros.isEmpty} :: $numeros');

  // Null Safety en acción.
  // En estos casos se recomienda comparar explicitametne
  print('isEmpty ${flotantes?.isEmpty} :: $flotantes');
  print('Esta vacía ${flotantes == null ? true : false}');

  // * Convertir a Set y Map
  // Estas acciones son inmutables, es decir, no afectan a lista orignal

  // Convertir a Set
  print('toSet ${repetidos.toSet()} :: $repetidos');
  // Convertir a Mapa
  print('asMap ${nombres.asMap()} :: $nombres');
  print('asMap ${numeros.asMap()} :: $numeros');

  // Buscar la posción de un elemento
  print('indexOf(Alejandro) - ${nombres.indexOf('Alejandro')} :: $nombres');
  // Buscar la posición del primer elemento que cumpla la condición
  print(
      'indexWhere mayor a 4 - ${repetidos.indexWhere((element) => element > 4)} :: $repetidos');

  // Remover elementos dentro de una lista
  print('Remove(Kuka) ${nombres.remove('Kuka')} :: $nombres');
  // Invertir orden de elemento
  print('reversed ${repetidos.reversed} :: $repetidos');
  // Ordenar elementos
  repetidos.sort();
  print('sort() $repetidos');

  // Mezclar de forma aleatoria los elmentos
  nombres.shuffle();
  print('Shuffle ${nombres}');

  // Recorrer cada elemento de una lista
  nombres.forEach((element) {
    print(element.toLowerCase());
  });
  print('Nombres: $nombres');

  // Mapear el contenido de la lista y almacenar el resultado en una nueva lista
  List<String> supers =
      nombres.map((element) => element.toUpperCase()).toList();
  print('map $supers :: Original - $nombres');
}
