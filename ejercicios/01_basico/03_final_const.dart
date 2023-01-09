void main() {
  // * VARIABLES
  // Su valor puede cambiar durante la ejecución del programa
  String nombre = 'Alejandro';
  nombre = 'Natalia';

  // var - permite a Dart inferir el tipo de dato (se recomienda hacer uso del tipado fuerte)
  var edad = 37;
  edad = 55;

  // * CONST
  // const - permite declarar constantes
  // su valor se debe inicializar en tiempo de compilación (un valor 100% fijo) y no en ejecución
  // son 100% inmutables (su valor no se puede reasignar)
  const numero_de_dias = 5;

  // * FINAL
  // final - permiten declarar constantes
  // su valor puede ser inicializado en tiempo de ejecución (almacenar la fecha actual)
  final fecha = new DateTime.now();
  final List<String> frutas = ['Mandarina', 'Naranja', 'Uva', 'Mango', 'Piña'];

  // no son 100% inmutables (cuando sus valores son cambiados mediante métodos propios - Listas)
  frutas.add('Melón');
  frutas.add('Manzana');

  // su valor no se puede reasignar una vez que es inicializado (apunten a otro espacio en memoria)
  // frutas = ['otra cosa'];

  // Pueden ser inicializadas bajo demanda
  final double total;
  total = 4813.4949;

  print('Tu nombre es $nombre, con edad de $edad');
  print(numero_de_dias);
  print(fecha);
  print(frutas);
  print(total);
}
