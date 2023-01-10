void main() {
  // * LATE
  // El modificador late fue incluido la versión 2.12 de Dart con la finalidad de..
  // Migrar proyectos a Null Safety
  // Inicializar variables de forma perezosa (bajo demanda)

  // Su principal objetivo es indicarle a Dart que cierta variable o constante (final)
  // tendrá un valor al momento de usarla o invocarla

  late final fecha_actual;
  // Esta variable se inicializará de forma perezosa, es decir cuando sea invocada o usada
  late String mi_saludo = saludar();

  fecha_actual = new DateTime.now();

  print('${getNombre()} con fecha del $fecha_actual dice: $mi_saludo');
}

// Indicamos que esta variable se inicializará después en algún punto, pero antes de ser invocada
late String nombre;
String getNombre() {
  nombre = 'Ramón Rojo Redondo';
  return nombre;
}

String saludar() {
  return 'Saludo desde Dart';
}
