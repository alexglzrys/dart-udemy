## Crear Proyecto Dart en VSCode

- Tener instalado Dart de forma global en el sistema
- Tener instalado la extensión de Dart en VSCode
- Abrir la paleta de comandos en VSCode:
```
CTRL + SHIFT + P
```
- Seleccionar: **Dart: New Project**
- Seleccionar: **Aplicación de Consola de Dart**
- Seleccionar un nombre para el proyecto y folder contenedor
- Esperar a que se genere toda la estructura de directorios e instalación de dependencias (paquetes)

## Ejecutar Aplicación Dart

En la consola ingresar el comando
```
dart bin/nombre_app.dart
```

## Depurar un programa en Dart

- Abrir el archivo que presenta un problema
- Colocar un **break point** en la línea dónde comienza a presentar las fallas
- Seleccionar el archivo que contiene la **función main**  
- Presionar la tecla **F5**
- Mediante la barra con acciones de depuración, ir avanzando paso a paso y ver los valores actuales en el panel de depuración hasta lograr identificar el error.