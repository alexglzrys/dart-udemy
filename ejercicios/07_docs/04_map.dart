void main() {
  Map<String, dynamic> persona = {
    'nombre': 'Alejandro',
    'apellidos': 'González Reyes',
    'edad': 37,
    'altura': 1.72,
  };

  Map<String, dynamic> direccion = {
    'comunidad': 'San Miguel Almaya',
    'estado': 'Estado de México',
    'pais': 'México',
  };

  // Propiedades y métodos de los mapas

  // Longitud
  print('Length ${persona.length} :: $persona');
  // Obtener llaves y valores
  print('Keys ${persona.keys} :: $persona');
  print('Values ${persona.values} :: $persona');
  // Agregar más propiedades a un mapa
  persona.addAll(direccion);
  print('addAll $persona');

  // Remover una llave de un mapa
  persona.remove('altura');
  print('remove(altura) $persona');

  // Recorrer el contenido de un mapa
  persona.forEach((key, value) {
    print('Propiedad $key - Valor $value');
  });
  print('Persona :: $persona');

  // Mapear el contenido de un mapa y el resultado almacenarlo en otra variable de tipo mapa
  final nueva_persona = persona.map((key, value) {
    // Si el valor actual es un String, convertirlo a Mayúscula
    if (value is String) value = value.toUpperCase();
    return MapEntry(key, value);
  });
  print('Nueva Persona $nueva_persona :: Persona $persona');

  // Remover llaves con base a una condición (solo conservar la llave nombre y comunidad)
  persona.removeWhere((key, value) => (key != 'nombre' && key != 'comunidad'));
  print('removeWhere $persona');
}
