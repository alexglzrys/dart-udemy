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

## Instalar paquetes de terceros en Dart

- Ir al sitio del **repositorios de paquetes Dart** en **https://pub.dev/**
- Buscar el paquete
- Verificar que sea compatible con nuestro desarrollo: **Compatible con Flutter, Web, Other (Dart consola)**
- Verificar **compatibilidad con Null safety**
- Leer las instrucciones de instalación, pegar el nombre del paquete y su versión en el archivo **pubspec.yaml** en el path de **dependencies**
- Al guardar los cambios, automáticamente VSCode ejecutará el comando de Dart **dart pub get** para instalar esa dependencia
```
Versión alpha 0.0.x
Versión beta 0.x.x
Versión producción >= 1.x.x 
```

## Mapear respuesta HTTP a una instancia de clase

Para mejorar el trabajo con la información que viaja en la respuesta HTTP de cualquier servicio. Se sugiere mapear toda la respuesta en una instancia de clase en Dart.

El objetivo es crear un mapa que sirva como interface para acceder de forma sencilla a cada uno de sus campos, sin temor a equivocarse en sus nombres.

Esto en el mundo de Angular es equivalente a las Interfaces, que nos ayudan a crear un cascarón de como luce la información de un determinado objeto (respuesta http)

- Ir al servicio en la nube: **https://quicktype.io/**
- Abrir el app, o bien, abrir **https://app.quicktype.io/**
- Seleccionar **Lenguaje Dart**
- Pegar la respuesta arrojada por el servicio
- Copiar el código de clase propuesto por el servicio
- Crear una clase en Dart y pegar el código.