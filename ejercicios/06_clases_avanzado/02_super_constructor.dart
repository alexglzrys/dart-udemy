abstract class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String direccion;
  late List<String> ordenes;

  // La clase padre recibe parámetros obligatorios en el constructor
  // Por tanto debemos incovar al super constructor (antes de crear la instancia para el objeto de esta clase) y pasarle esa informacion
  // Para ello sierven los :
  Cliente(String nombre_cliente, int edad_cliente, this.direccion)
      : super(nombre_cliente, edad_cliente) {
    // Cualquier tipo de inicialización adicional
    this.ordenes = [];
  }

  // * Sobre-escribir un método declarado en la clase padre
  @override
  void imprimirNombre() {
    print('Cliente: $nombre, Dirección Fiscal: $direccion, Edad: $edad');
    // Con super puedo invocar al método original
    // super.imprimirNombre();
  }

  void imprimirDireccionFiscal() => print('Direccion: $direccion');
}

void main() {
  // Crear un cliente
  final clienteA = new Cliente('Alejandro', 35, 'San Miguel Almaya');

  clienteA.imprimirNombre();
  clienteA.imprimirDireccionFiscal();
  clienteA.ordenes.add('Curso de PHP');
  clienteA.ordenes.add('Curso de Dart');
  clienteA.ordenes.forEach(print);
}
