void main() {
  // Ciclos anidados
  for (int i = 0; i < 5; i++) {
    print('For principal i = $i');
    for (int j = 0; j < 5; j++) {
      print('j = $j');
      // Si j es 2, salimos del ciclo actual
      if (j == 2) break;
    }
  }

  print('--- Fin ciclos anidados ---');
  // For con etiquetas
  // Nos permite identificar cada ciclo con un nombre, mismo que podemos adjuntarlo con la instrucción break para indicar que ciclo se debe terminar

  cicloPrincipal:
  for (int i = 0; i < 5; i++) {
    print('For Label principal i = $i');

    cicloSecundario:
    for (int j = 0; j < 5; j++) {
      print('j = $j');
      // Si j es 2, salimos del ciclo principal
      if (j == 2) break cicloPrincipal;
    }
  }

  print('--- Fin ciclos con nombre ---');
}
