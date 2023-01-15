// Clase padre
// Las clases abstractas son como el cascarón inicial de otras clases
// No se pueden instanciar
// Pueden definir métodos abstractos, cuya definición será responsabilidad de las clases hijas
abstract class Vehiculo {
  bool? _encendido = false;

  void encenderMotor() {
    _encendido = true;
    verificarMotor();
    print('motor encendido');
  }

  void apagarMotor() {
    _encendido = false;
    print('motor apagado');
  }

  // Método abstracto
  bool verificarMotor();
}
