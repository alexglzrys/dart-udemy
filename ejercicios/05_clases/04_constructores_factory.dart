void main() {
  // El constructor de tipo factory, se encargará de llamar al constructor de nombre correcto para inicializar el objeto
  final cuadrado = new Rectangulo(10, 10);
  final rectangulo = new Rectangulo(20, 15);

  print(cuadrado);
  print(rectangulo);
}

class Rectangulo {
  // Sus valores más tarde se asignarán de forma perezosa (late)
  late int base;
  late int altura;
  late int area;
  late String tipo;

  // * Constructor Factory
  // Por si solos no crean instancias de la clase, verifican que exista una creada y la retornan
  // En caso contrario, invocan a otro constructor para que la genere y el factory pueda retornarla
  // ? Se usan frecuentemente con el patrón Singleton

  factory Rectangulo(int base, int altura) {
    // Comprobaciones
    if (base == altura) {
      // Llamar al constructor de nombnre cuadrado para retornar una instancia del mismo
      return Rectangulo.cuadrado(base);
    } else {
      // Llamar al constructor de nombnre rectángulo para retornar una instancia del mismo
      return Rectangulo.rectangulo(base, altura);
    }
  }

  // * Constructores por nombre

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  // * Metodos
  @override
  String toString() {
    // Retornar un mapa convertido a cadena de texto con la información del objeto
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}
