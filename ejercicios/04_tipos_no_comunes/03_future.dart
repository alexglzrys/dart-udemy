void main() {
  print('Inicio del programa');

  // Future - Son como las Promesas en JS
  // Los Future siempre rompen la linea secuencial del tiempo. Pues son promesas que no se sabe cuando se pueden resolver
  // Por tanto juega mucho el asincronismo
  Future<void> timeout = Future.delayed(new Duration(seconds: 3), () {
    print('Resuelto después de 3 segundos');
  });

  // Future que resuleve una cadena de texto
  Future<String> saludar = Future.delayed(Duration(seconds: 5), () {
    return 'Hola Alejandro';
  });

  // Ejecutar tareas siempre y cuando se resuelva el Future saludar
  // Aqui se maneja el aincronismo, ya que deseamos que estas acciones se ejecuten despues de resolverse la promesa
  saludar.then((mensaje) {
    print('Future saludar resuelto exitosamente');
    print(mensaje);
  });

  print('Fin del programa');
}
