// 3. Importar archivos propios
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  // Ejercicio 1
  // Construir url
  // final url = Uri.parse('https://reqres.in/api/users?page=2');
  // Invocar método declarado en paquetes para realizar la solicitud HTTP
  // paquetes.reqResService(url);

  // Ejercicio 2
  paquetes.getInfoPaisColombia();
}
