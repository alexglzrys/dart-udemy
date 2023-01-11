void main() {
  print('continue 5');
  for (int i = 0; i <= 10; i++) {
    // Continue le indica al procesador que salte en ese punto y siga con la siguiente iteración
    if (i == 5) continue;
    print(i);
  }

  print('break 5');
  for (int j = 0; j <= 10; j++) {
    print(j);
    // Break le indica al procesado que pare en ese punto y salga del ciclo
    if (j == 5) break;
  }
}
