# Trabajando con la Web: Concurrencia

En la lección anterior, aprendí cómo decodificar JSON en tipos Swift nativos y objetos de modelo personalizados, cómo escribir mi propio controlador de finalización para manejar código asíncrono y un poco sobre cómo podría abordar la adición de código a un proyecto Xcode.
En esta lección, tomé los datos que recibí de una solicitud de red, los decodifiqué y los mostré en mi propia aplicación. También descargué y configuré mi primera imagen para mostrarla. Para lograr todo esto, aprendí sobre el sistema de concurrencia en iOS y cómo asegurarme de que el código que actualiza la interfaz de usuario se ejecute en el lugar correcto.

## Lo que Aprendí
- Cómo agregar código de red a un proyecto Xcode.
- Los conceptos básicos de cómo el procesador ejecuta código en diferentes colas.
- Cómo enviar código que actualiza la interfaz de usuario para que se ejecute en la cola principal.
- Cómo funciona el sistema de almacenamiento en caché de URL compartida para guardar las respuestas de solicitudes de red repetidas.

## Vocabulario
- `App Transport Security (ATS)`: Sistema de seguridad que protege las comunicaciones de red en una aplicación iOS.
- `cola de fondo`: Cola en la que se ejecutan tareas en segundo plano.
- `concurrencia`: Ejecución simultánea de varias tareas.
- `DispatchQueue`: Clase que gestiona la ejecución de tareas en un hilo específico.
- `Grand Central Dispatch (GCD)`: Sistema de programación en paralelo en iOS y macOS.
- `cola principal`: Cola en la que se ejecuta el código relacionado con la interfaz de usuario.
- `indicador de actividad de red`: Representación visual del estado de la actividad de red en una aplicación.

