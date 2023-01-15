import 'vehiculo.dart';

// Clase hijo que hereda de Vehículo
class Automovil extends Vehiculo {
  int _kilometraje = 0;

  void recorrerKilometros(int kilometros) {
    _kilometraje += kilometros;
  }

  String verKilometrosRecorridos() =>
      'Kilómetros recorridos ${_kilometraje} km.';
}
