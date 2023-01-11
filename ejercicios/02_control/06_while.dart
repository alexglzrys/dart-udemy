import 'dart:io';

void main() {
  print('Productos en venta');
  double total = 0;
  String continuar = 'y';

  while (continuar == 'y') {
    print('Total: $total');
    stdout.writeln('Ingrese un precio');
    total += double.parse(stdin.readLineSync() ?? '0');
    stdout.writeln('Desea continuar (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  }
}
