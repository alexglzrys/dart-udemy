// 1. Core
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
    print(response.body);
  });
}
