void main() {
  String nombre = 'Alejandro';
  String avatar = 'Dani Osorno';

  // En Dart los tipos primitivos son pasados por valor (Cada uno apunta a un espacio de memoria diferente)
  nombre = avatar;
  avatar = 'Oso';

  print('Nombre: $nombre');
  print('Avatar: $avatar');

  String nuevo_texto = alterarTexto(avatar);

  print('Mi avatar: $avatar');
  print('Alteración: $nuevo_texto');

  Map<String, String> persona = {'nombre': 'Alejandro'};
  Map<String, String> persona2 = capitalizarMapa(persona);

  // El mapa persona, fue afectado internamente en la función de capitalizarMapa
  // En este sentido, su información original se vio afectada
  print('Persona: $persona');
  print('Persona 2: $persona2');

  Map<String, String> info_inicial = {'nombre': 'Somos inteligentes'};
  Map<String, String> info_resultado =
      capitalizarMapaSinReferencia(info_inicial);

  print('Información inicial: $info_inicial');
  print('Información resultado: $info_resultado');
}

// En funciones los tipos primitivos pasan siempre por valor
String alterarTexto(String texto) {
  texto = '--- ${texto.toUpperCase()} ---';
  return texto;
}

// Las listas, mapas, objetos en Dart pasan por referencia (apuntan al mismo espacio en memoria)
Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Si hay información, transformala a mayuscula. Caso contrario asigna Sin datos
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'Sin datos';
  return mapa;
}

// Evitar Paso por Referencia
Map<String, String> capitalizarMapaSinReferencia(Map<String, String> info) {
  // Romper la referencia: Mediante la desestructuración (Al estilo de JS ES6)
  info = {...info};

  info['nombre'] = info['nombre']?.toUpperCase() ?? 'Sin datos';
  return info;
}
