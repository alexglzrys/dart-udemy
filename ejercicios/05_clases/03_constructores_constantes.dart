void main() {
  const guadalajara = const Location(17.451, 9.045);

  // Estos dos objetos apuntan al mismo espacio en memoria (por tener la misma data y ser instanciados mediante un constructor constante)
  const cdmx = const Location(18.956, 9.999);
  const zocalo = const Location(18.956, 9.999);

  print('Guadalajara - CDMX = ${guadalajara == cdmx}');
  print('CDMX - Zócalo = ${cdmx == zocalo}');
}

class Location {
  final double lat;
  final double lng;

  // Constructor declarado como constante
  // Si la clase produce objetos que nunca cambian (inmutables), podemos hacer que estos objetos sean constantes en tiempo de compilación
  // Todos los objetos creados con la mismos datos (lat y lng) apuntarán al mismo espacio en memoria
  const Location(this.lat, this.lng);
}
