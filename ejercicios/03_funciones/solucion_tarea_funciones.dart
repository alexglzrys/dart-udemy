import 'dart:io';

main() {
  imprimir('¿Cuantos usuarios deseas procesar?');
  int cantidad_usuarios = int.parse(leer());

  for (int i = 0; i < cantidad_usuarios; i++) {
    procesarUsuario(i + 1);
  }
}

// Función para imprimir información en el consola (Output)
void imprimir(Object mensaje) => stdout.writeln(mensaje);

// Función para leer información desde consola (Input)
String leer() => stdin.readLineSync() ?? '';

// Función para calcular deducciones
// Los mapas son pasados por referencia, por tanto añadimos más información al usuario pasado como parámetro
void mostrarDesglosePago(Map<String, dynamic> usuario, double salario) {
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;
}

void procesarUsuario(int id_usuario) {
  imprimir('=========== Usuario $id_usuario =============');
  imprimir('¿Cúal es su nombre?');
  String nombre = leer();
  imprimir('¿Qué edad tienes?');
  String edad = leer();
  imprimir('¿En qué país naciste?');
  String pais = leer();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  imprimir('Usuario $id_usuario sin deducciones');
  imprimir(usuario);
  mostrarDesglosePago(usuario, 1500);
  imprimir(usuario);
}
