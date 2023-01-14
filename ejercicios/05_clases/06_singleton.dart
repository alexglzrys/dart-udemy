import 'clases/mi_servicio.dart';

void main() {
  // La clase MiServicio implementa el patrón singletón, por tanto, no importa cuantas instancias de la misma clase se generen
  // Siempre se retornará el mismo objeto.
  final spotify = new MiServicio();
  final youtube = new MiServicio();

  spotify.url = 'https://api.spotify.com/v1';
  spotify.key = '123abc';

  youtube.url = 'https://youtube.com/api/v2';
  youtube.key = 'qwerty';

  print('Son la misma instancia de clase = ${spotify == youtube}');
  print(spotify.url);
  print(youtube.url);
}
