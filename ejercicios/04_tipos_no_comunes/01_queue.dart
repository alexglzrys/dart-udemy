import 'dart:collection';

void main() {
  /*
  Las colas imitan el comportamiento de un cola en la vida real,
  el primero en entrar es el primero en salir (FIFO)
  
  */

  // Generar una cola con elementos de tipo entero
  Queue<int> cola_enteros = new Queue();

  // Agregar datos a la cola
  cola_enteros.addAll([10, 20, 30, 40, 50]);

  // Agregar elementos al inicio y final de la cola
  cola_enteros.addFirst(100);
  cola_enteros.addLast(200);

  // Generar un iterator para iterar por cada elemento en situado dentro de la cola
  Iterator i = cola_enteros.iterator;

  // Iterar por cada elemento en la cola
  while (i.moveNext()) {
    print('Elemento actual: ${i.current}');
  }
}
