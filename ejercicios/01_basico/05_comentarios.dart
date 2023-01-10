/**
 * 
 * Este archivo contiene toda la lógica necesaria referente a los
 * comentarios de mi aplicación
 * Este tipo de comentarios son del tipo multinea, y sirven para la documentación
 * oficial en Dart
 * Lo que se encuentra entre corchetes es el equivalente a @params @author en otros lenguajes de programacion
 * 
 * DartDoc: es un generador de documentación para nuestras aplicaciones Dart (Documentación de un API)
 * 
 * [author] : Alejandro González Reyes
 * [created_at] : 2023-01-10
 * 
 */

void main() {
  // Comentario de código
  // Comentarios de una sola línea (escapados durante la generación de documentación oficial)
  print(saludar('Alejandro'));

  /*
    Comentario de código
    Comentarios multilínea
    Escapados durante la generación de documentación oficial
  */
}

/// Comentarios del tipo documentación de una sola línea
/// [autor] : Alejandro González Reyes
/// [created_at] : 2023-01-10
/// [description] : Función que retorna un saludo a partir de un [nombre] pasado como parámetro
String saludar(String nombre) {
  final mensaje = 'Hola $nombre bienvenido a Dart';
  return mensaje;
}
