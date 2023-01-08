void main() {
  // Declaración de variables de tipo numérico
  int edad = 37;
  double peso = 132.45;
  double cantidad = edad + peso;

  // var le inidca a Dart que debe inferir el tipo de dato
  var placas = 'LK4842-MC';

  // Null Saflty (Dart >= 2.12)
  // Es un agente en Dart que obliga a que todas las varibles tengan asignado un valor (en el momento de ser usadas)
  // En caso de que la variable pueda o no ser nula, se debe especificar explicitamente durante su declaración (mediante ?)
  String? doctorado;

  // Esta instrucción es válida, por que la variable doctorado puede ser nula
  print(doctorado);
  print(cantidad);
}
