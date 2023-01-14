import 'dart:async';

void main() {
  print('-- Inicio Programa --');

  // * Los Streams son el equivalente a los Subscripciones en Angular

  // Los streams son flujos de información
  // Su comportamiento es asíncrono (no bloqueante)
  // A diferencia de los Futures, estos no terminan cuando se resuelve la información. Siguen operando.

  // Todo el flujo de información que viaja en el Stream de este ejemplo será de tipo String
  // Por defecto los streams solo pueden ser escuchados por un solo listener (una sola suscripción)
  // final streamController = StreamController<String>();

  // Si deseamos que puedan ser escuchados por múltiples listeners (suscripciones) hay que colocarles el broadcast

  final streamController = StreamController<String>.broadcast();
  // Al suscribirse o escucharlos, se establecerá un canal que permite conocer en todo momento lo que pasa con su flujo de infromación
  streamController.stream.listen(
    // Acciones que se deben ejeuctar cuando se reciba información en el stream
    (data) => print('Despegando... $data'),
    // Acciones a ejecutar si sucede un error
    onError: (error) => print('Error... $error'),
    // Especificar si deseamos cancelar todas las operaciones al presentarse un error
    cancelOnError: false,
    // Acciones a ejecutar si todo es correcto
    onDone: () => print('Houstom!.. Todos los satélites están en orbita'),
  );

  // Segundo listener
  // Este provocaría un error si el stream es de una sola suscripción
  streamController.stream.listen(
    // Acciones que se deben ejeuctar cuando se reciba información en el stream
    (data) => print('Despegando en Marte... $data'),
    // Acciones a ejecutar si sucede un error
    onError: (error) => print('Error Marte... $error'),
    // Especificar si deseamos cancelar todas las operaciones al presentarse un error
    cancelOnError: false,
    // Acciones a ejecutar si todo es correcto
    onDone: () => print(
        'Houstom!.. Todos los satélites están en orbita en el planeta Marte'),
  );

  // Agregar información al stream
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink
      .addError('Houstom!. Tenemos un problema, reparenlo de inmediato');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  // Finalizar la suscripción:
  streamController.sink.close();

  print('-- Fin Programa --');
}
