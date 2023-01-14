void main() {
  final cuadrado = new Cuadrado(15);
  print('Area: ${cuadrado.area}');
}

class Cuadrado {
  // Propiedades finales
  // Su valor no puede cambiar una vez instanciada la clase
  // Generalmente tienen un valor por defecto, pero se les puede asignar durante el procedimiento de instanciación de la clase
  // Una propiedad marcada como final no tiene asociado un setter (pues su valor no puede cambiar)
  final int lado;
  final int area;

  // Los : indican que se debe realizar el procedimiento al mismo tiempo que se crea la instancia de clase
  // de lo contrario al ser propiedades final, no se les podría asignar un valor (el constructor clásico con llaves no funcionaría)
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}
