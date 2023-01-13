void main() {
  double resultado_suma = suma(17.5, 8);
  print('Suma: $resultado_suma');

  List<int> numeros = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    5,
    4,
    5,
    2,
    3,
    8,
    1,
    9,
    6,
    4,
    7,
    10
  ];
  // Funciones Lambda (flecha) son usadas generalmente en el trabajo con listas (mismo caso en en JS)
  Iterable<int> filtro_mayores_a_cinco = numeros.where((num) => num > 5);

  // Un Iterable es un tipo de dato en Dart que contiene un conjunto de elementos
  // el cuál cuenta con método de utilidad para filtrar, convertir, o transformar su contenido interno
  print(filtro_mayores_a_cinco);

  // Obtener un conjunto (solo los números que no se repiten en dicho iterable)
  Set<int> conjunto = filtro_mayores_a_cinco.toSet();
  print(conjunto);
}

// Función de tipo Flecha
// Se usan cuando el cuerpo de la misma consta de una sola linea (devuelve el valor por defecto como en JS ES6)
double suma(double numA, double numB) => numA + numB;
