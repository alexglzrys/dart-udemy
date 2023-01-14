void main() {
  // Usar una enumeración para establecer el nivel de volumen
  // en lugar de usar: 0, 1 o 2
  // Por tanto, no hay oportunidad al error, ya que los valores posibles que pude tomar son alguno de los definidos en la enumeracion
  Audio volumen = Audio.medio;

  switch (volumen) {
    case Audio.bajo:
      print('Nivel de volumen: bajo');
      break;
    case Audio.medio:
      print('Nivel de volumen: medio');
      break;
    case Audio.alto:
      print('Nivel de volumen: alto');
      break;
  }
}

// Las enumeraciones se declaran fuera de las funciones
// Ayudan a que el código sea más fácil de leer y comprender
// Se les usa en aquellos casos cuando una variable puede recibir diferentes valores abstractos, pero con un significado importante.
enum Audio { bajo, medio, alto }
