# Anatomía de la Aplicación y Ciclo de Vida

En esta lección, he explorado cómo responder al lanzamiento de una aplicación, al entrar en un estado en segundo plano, al regresar a un estado en primer plano o al salir. He adquirido conocimientos sobre cómo se carga una aplicación en la memoria y sobre los `hooks` del delegado que permiten ejecutar lógica en diferentes etapas del ciclo de vida de la aplicación.

## Lo que Aprenderás

- Identificar y describir cada evento del ciclo de vida en la aplicación y los delegados de escena.
- Identificar los eventos del ciclo de vida correctos para ejecutar la lógica para iniciar la aplicación.
- Identificar los eventos correctos del ciclo de vida para ejecutar la lógica para entrar o salir del fondo

## Vocabulario
- `activo`: Estado en el que la aplicación está actualmente en primer plano y ejecutándose.
- `delegado de la aplicación`: Objeto que maneja eventos del ciclo de vida de la aplicación.
- `estado de la aplicación`: Condición actual de la aplicación, como activo, en segundo plano, etc.
- `en segundo plano`: Estado en el que la aplicación está en ejecución pero no visible para el usuario.
- `en primer plano`: Estado en el que la aplicación está actualmente visible para el usuario.
- `delegado de escena`: Objeto que maneja eventos específicos de la escena en la aplicación.

## Aplicaciones Videos

### `AppEventCount-Marcocrasi - Lab`

Las siete etiquetas se actualizan con los eventos del ciclo de vida de la aplicación. Las etiquetas se refrescan correctamente cuando el usuario desencadena diferentes eventos, como navegar a la pantalla de inicio y regresar, o activar la interfaz de cambio de aplicaciones.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acaba5bc-fab7-4b97-b19c-719de61afe19


### `AppLifeCycle-Marcocrasi`

Esta aplicación se centra en la exploración de los archivos AppDelegate.swift y SceneDelegate.swift generados automáticamente por Xcode en cada nuevo proyecto. Su propósito es facilitar la comprensión de los métodos de delegado más comunes utilizados durante el ciclo de vida de la aplicación, especialmente durante transiciones como el cambio de primer plano a segundo plano.

Además, al ejecutar la aplicación en el simulador, se observan mensajes en la consola que indican eventos clave, como la finalización del lanzamiento de la aplicación, la conexión de la escena a la sesión, la entrada de la escena en primer plano y la activación de la escena.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e89203ff-51eb-4c9f-b8d2-4f4cf6112bf4


