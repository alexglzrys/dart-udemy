import 'clases/automovil.dart';

void main() {
  // * Las propiedades y métodos privados _
  // Serán de acceso publico si la definición de la clase que las contiene se encuentra en el mismo archivo
  // Por tanto, es importante que cada clase esté en archivos separados

  // El keyword new es opcional en Dart
  final camioneta_ford = new Automovil();

  camioneta_ford.encenderMotor();
  camioneta_ford.recorrerKilometros(3);
  camioneta_ford.recorrerKilometros(1);
  print(camioneta_ford.verKilometrosRecorridos());
  camioneta_ford.apagarMotor();
}
