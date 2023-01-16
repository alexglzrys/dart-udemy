// 1. Core
// Paquete para realizar conversiones - json a mapas, etc
// import 'dart:convert';

// 2. Importar paquete de terceros
// as es un alias (se importa todo el contenido de ese archivo bajo el nombre de http - http.algo)
import 'package:http/http.dart' as http;
import 'package:paquetes/clases/reqres_respuesta.dart';

void reqResService(Uri url) {
  // Realizar la petición y reaccionar cuando se resuelva
  http.get(url).then((response) {
    // Por defecto el cuerpo de la respuesta es un String
    // print(response.body);

    // * Convertirla a un mapa (esto será así si la respuesta es un JSON)
    // ! Forma artesanal
    /*final body = jsonDecode(response.body);

    print(body);
    print('Total de resultados: ${body['total']}');
    print('Página actual: ${body['page']}');
    print('Resultados por página: ${body['per_page']}');
    print('ID tercer elemento: ${body['data'][2]['id']}'); */

    // * Convertir la respuesta a un objeto de Dart
    // ? Forma recomendada (mediante una instancia de clase que me ayude con el tipado, y con métodos utilitarios para transformar la data)
    final respuesta = ReqResRespuesta.fromJson(response.body);

    print(respuesta);
    print('Total de resultados: ${respuesta.total}');
    print('Página actual: ${respuesta.page}');
    print('Resultados por página: ${respuesta.perPage}');
    print('ID tercer elemento: ${respuesta.data[2].id}');

    final respuestaMapa = respuesta.toMap();
    print('Respuesta a Mapa $respuestaMapa');
  });
}
