void main() {
  // Ejecutar una función con argumetos posicionales
  // El último argumento es una función, la cual actua como callback.
  // Un callback es una función que se invoca dentro de otra función
  buscarPersonaPorId('4812sd7sd1', (dynamic err, Map<String, dynamic> persona) {
    // Las instrucciones declaradas en esta función, se invocarán al finalizar la busqueda de la persona
    // Primero tratamos el error
    if (err is String) {
      print('Lo sentimos, encontramos un error');
      return;
    }
    // Si todo es correcto, imprimo los datos de la persona
    print(persona);
  });
}

void buscarPersonaPorId(String _id, Function callback) {
  // ... Simular busqueda en base de datos
  Map<String, dynamic> persona = {
    '_id': _id,
    'nombre': 'Alejandro',
    'apellidos': 'González Reyes',
    'edad': 37,
    'peso': 132.5,
    'altura': 1.72,
  };

  // Ejecutar callback (Función enviada como parámetro a esta función)
  // Los callbacks por lo general siempre se llaman al final

  // En caso de error, lo pasamos como primer parámetro de la función
  callback(false, persona);
}
