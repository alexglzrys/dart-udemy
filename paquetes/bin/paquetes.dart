// 1. Core
// Paquete para realizar conversiones - json a mapas, etc
import 'dart:convert';
// 2. Importar paquete de terceros
// as es un alias (se importa todo el contenido de ese archivo bajo el nombre de http - http.algo)
import 'package:http/http.dart' as http;
// 3. Importar archivos propios
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  // Construir url
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  // Realizar la petición y reaccionar cuando se resuelva
  http.get(url).then((response) {
    // Por defecto el cuerpo de la respuesta es un String
    // print(response.body);

    // * Convertirla a un mapa (esto será así si la respuesta es un JSON)
    final body = jsonDecode(response.body);

    print(body);
    print('Total de resultados: ${body['total']}');
    print('Página actual: ${body['page']}');
    print('Resultados por página: ${body['per_page']}');
    print('ID tercer elemento: ${body['data'][2]['id']}');
  });
}
