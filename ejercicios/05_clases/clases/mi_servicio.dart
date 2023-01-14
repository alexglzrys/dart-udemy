class MiServicio {
  String? url;
  String? key;

  // El patrón Singletón se aplica en el cuerpo de la clase

  // 1. Requiere de un constructor privado
  // En Dart la comunidad hace uso del nombre _internal
  MiServicio._internal();

  // 2. Requiere de una propiedad de clase privada que sirva de almacenamiento temporal
  // Para guardar la única instancia de esta clase
  // Se debe marcar como final para poder cambiar el valor de sus propiedades.
  static final MiServicio _singleton = new MiServicio._internal();

  // 3. Requiere de un constructor factory
  // Para retornar la única instancia de esta clase
  factory MiServicio() {
    return _singleton;
  }
}
