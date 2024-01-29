# Trabajando con la Web: Concurrencia

En esta lección, he aprendido a actualizar una interfaz de usuario con nuevos datos. He comprendido las mejores prácticas para incluir código de red en una aplicación y para despachar actualizaciones de interfaz a la cola principal.

## Lo que Aprendí

- Demostrar las mejores prácticas para diseñar código de red en una aplicación.
- Describir el modelo de concurrencia de una aplicación de iOS.
- Demostrar cómo enviar actualizaciones de la interfaz de usuario a la cola principal.
- Demostrar cómo mostrar una lista de objetos modelo de una solicitud de red en una vista de lista

## Vocabulario
- `App Transport Security (ATS)`: Sistema de seguridad que protege las comunicaciones de red en una aplicación iOS.
- `cola de fondo`: Cola en la que se ejecutan tareas en segundo plano.
- `concurrencia`: Ejecución simultánea de varias tareas.
- `DispatchQueue`: Clase que gestiona la ejecución de tareas en un hilo específico.
- `Grand Central Dispatch (GCD)`: Sistema de programación en paralelo en iOS y macOS.
- `cola principal`: Cola en la que se ejecuta el código relacionado con la interfaz de usuario.
- `indicador de actividad de red`: Representación visual del estado de la actividad de red en una aplicación.

## `6 - Concurrencia WWW`

### `Búsqueda de iTunes`

El objetivo de este laboratorio es integrar las solicitudes de red de búsqueda de iTunes en una aplicación real y aplicar las lecciones aprendidas sobre concurrencia al proyecto. Crearás una aplicación que permitirá al usuario buscar diferentes tipos de medios y ver los resultados en una vista de tabla. Para mejorar el rendimiento de la vista de tabla, también aprenderás a actualizar el tamaño de la caché de URL para guardar temporalmente las imágenes.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a61ee110-3164-4442-968e-c0da4c3be1f7


### `Foto espacial`

Una app que utiliza la API de la Fotografía Astronómica del Día (APOD) de la NASA para obtener datos y mostrar la información junto con la imagen en la propia aplicación.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a769780c-085e-4b5c-a3f1-56208cf336d6

