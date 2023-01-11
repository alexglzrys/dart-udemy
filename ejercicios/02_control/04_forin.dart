void main() {
  List<String> familia_z = [
    'Goku',
    'Vegeta',
    'Gothen',
    'Trunks',
    'Gohan',
    'Pickoro',
    'Krillin'
  ];

  // Iterar por cada elemento en la lista
  // For in (recomendado)
  for (String guerrero in familia_z) {
    print(guerrero);
  }

  // Iterar por cada elemento en la lista mediante su posición
  // For (tradicional)
  for (int i = 0; i < familia_z.length; i++) {
    print('Guerrero: ${familia_z[i]}');
  }
}
