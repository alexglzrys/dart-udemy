void main() async {
  print('-- Inicio Programa --');

  // Capturar el posible error si la promesa no se resuelve (estilo then)
  // saludo().then(print).catchError(print);

  // Capturar el posible error si la promesa no se resuelve (estilo async - await)
  try {
    String mensaje = await saludo();
    print(mensaje);
  } catch (err) {
    print(err);
  }

  print('-- Fin Programa --');
}

// Funcipon que resuleve una promesa de tipo String como saludo
// Internamente si no se puede resolver, lanza una excepción.
Future<String> saludo() {
  return Future.delayed(Duration(seconds: 2), () {
    if (1 == 1) {
      throw 'Error crítico, ya explotó la bomba';
    }
    return 'Promesa resuelta';
  });
}
