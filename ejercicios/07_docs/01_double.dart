void main() {
  // * En Dart todo es un Objeto

  // URL documentación Dart: https://dart.dev/guides
  // URL documentación Core Dart: https://dart.dev/guides/libraries

  // Crear un objeto (instancia) de la clase Double
  double numero = 3.1416;
  double otro_numero = -4.8;

  // Acceder a propiedades y métodos de un objeto double
  print('Firma ${numero.sign} :: Número $numero');
  print('Firma ${otro_numero.sign} :: Número $otro_numero');

  // Redondeo
  print('Round ${numero.round()} :: Número $numero');
  print('Round Double ${otro_numero.roundToDouble()} :: Número $otro_numero');

  // Redondeo al valor más alto
  print('Ceil ${numero.ceil()} :: Número $numero');
  print('Ceil Double ${otro_numero.ceilToDouble()} :: Número $otro_numero');

  // Verificar si es finito
  print('Finito ${numero.isFinite} :: Número $numero');
  print('Finito ${otro_numero.isFinite} :: Número $otro_numero');

  // Valor absoluto
  print('Absoluto ${numero.abs()} :: Número $numero');
  print('Absoluto ${otro_numero.abs()} :: Número $otro_numero');

  // Truncar o cortar
  print('Truncate ${numero.truncate()} :: Número $numero');
  print('Truncate ${otro_numero.truncate()} :: Número $otro_numero');

  // Verificar si esta en el rango - o mostrar rango limite
  print('Clamp(0,2) ${numero.clamp(0, 2)} :: Número $numero');
  print('Clamp(-10,2) ${otro_numero.clamp(-10, 2)} :: Número $otro_numero');
}
