// Clase padre
class Vehiculo {
  bool? _encendido = false;

  void encenderMotor() {
    _encendido = true;
    print('motor encendido');
  }

  void apagarMotor() {
    _encendido = false;
    print('motor apagado');
  }
}
