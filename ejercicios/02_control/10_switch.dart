import 'dart:math';

void main() {
  // Generar un número entero random entre O y menor a 7
  int rnd = Random().nextInt(7);
  rnd += 1;
  print('Numero generado: $rnd');
  // Verificar que día de la semana vamos a comer tacos gratis
  switch (rnd) {
    case 1:
      print('El lunes a las 2pm');
      break;
    case 2:
      print('Martes a las 7pm');
      break;
    case 3:
      print('Miércoles a las 11am');
      break;
    case 4:
      print('Jueves a las 8pm');
      break;
    case 5:
      print('Viernes en la oficina 2pm');
      break;
    case 6:
    case 7:
      print('Lo sentimos, no se trabaja');
      break;
    default:
      print('que número extraño');
  }
}
