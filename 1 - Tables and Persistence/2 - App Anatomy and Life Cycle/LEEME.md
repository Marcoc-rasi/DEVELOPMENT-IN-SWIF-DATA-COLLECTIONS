# Anatomía de la Aplicación y Ciclo de Vida

En una unidad anterior, aprendiste sobre las diferentes etapas del ciclo de vida del controlador de vista. El ciclo de vida de una aplicación funciona de manera muy similar: la aplicación se abre, se ejecuta, entra en segundo plano y luego se cierra.
En esta lección, aprenderás más sobre los diferentes estados del ciclo de vida y los ganchos del delegado para ejecutar lógica a medida que la aplicación avanza a través de cada estado.

## Lo que Aprenderás
- Cómo ejecutar código en diferentes etapas del ciclo de vida de la aplicación.

## Vocabulario
- `activo`: Estado en el que la aplicación está actualmente en primer plano y ejecutándose.
- `delegado de la aplicación`: Objeto que maneja eventos del ciclo de vida de la aplicación.
- `estado de la aplicación`: Condición actual de la aplicación, como activo, en segundo plano, etc.
- `en segundo plano`: Estado en el que la aplicación está en ejecución pero no visible para el usuario.
- `en primer plano`: Estado en el que la aplicación está actualmente visible para el usuario.
- `delegado de escena`: Objeto que maneja eventos específicos de la escena en la aplicación.

## Aplicaciones de vídeos

### 1 - Tablas y Persistencia

#### Anatomía y ciclo de vida de la aplicación
##### AppEventCount-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/76eece6c-6cbe-45d0-b426-8777ea045ae7

El código que proporcionó se divide en tres partes clave: el controlador de vista `ViewController`, la clase `SceneDelegate` y la clase `AppDelegate`. Estas partes trabajan juntas para rastrear y administrar eventos relacionados con el ciclo de vida de una aplicación iOS. Se utilizan para realizar un seguimiento de eventos y contadores de eventos, lo que permite mostrar información relevante en la interfaz de usuario.

**`ViewController.swift` - Controlador de vista:**

En `ViewController.swift`, se define la clase `ViewController`, que hereda de `UIViewController` y es responsable de controlar la vista de la aplicación. Esta clase contiene etiquetas (`UILabels`) que se utilizan para mostrar información sobre eventos y contadores de eventos relacionados con la aplicación y la escena. Estas etiquetas incluyen:

- `didFinishLaunchingLabel`: Una etiqueta que muestra el número de veces que se ha iniciado la aplicación.
- `configurationForConectingLabel`: Una etiqueta que muestra cuántas veces se han realizado configuraciones para conectarse.

Además, se definen variables para rastrear contadores de eventos, como la cantidad de veces que la escena se ha conectado (`willConectToCount`), la cantidad de veces que se ha activado (`didBecomeActiveCount`), la cantidad de veces que se ha vuelto inactiva (` willresignActiveCount`), el número de veces que ha entrado en primer plano (`willEnterForeGroundCount`) y el número de veces que ha pasado a segundo plano (`didEnterBackGroundCount`).

El controlador de vista también contiene una referencia a "AppDelegate", que se utiliza para acceder a los contadores y datos relacionados con el ciclo de vida de la aplicación.

La función `updateView` es responsable de actualizar las etiquetas en la interfaz de usuario con la información más reciente. Las etiquetas están llenas de detalles sobre eventos y contadores, incluyendo cuántas veces se ha iniciado la aplicación y cuántas configuraciones se han realizado para conectarse. La información se obtiene de la instancia `AppDelegate` y las variables de recuento definidas en esta clase.

**`SceneDelegate.swift` - Clase SceneDelegate:**

La clase `SceneDelegate` se utiliza para gestionar eventos y el ciclo de vida de las escenas de la aplicación. Contiene una serie de funciones que se activan en diferentes puntos del ciclo de vida de una escena, que incluyen:

- `scene(_:willConnectTo:options:)`: Se activa cuando la escena está a punto de conectarse. En esta función, se incrementa el contador `willConectToCount` en el controlador de vista y se obtiene una referencia al controlador de vista. Esto se hace para realizar un seguimiento de cuántas veces se ha conectado la escena.

- Otras funciones, como `sceneDidDisconnect`, `sceneDidBecomeActive`, `sceneWillResignActive`, `sceneWillEnterForeground` y `sceneDidEnterBackground`, se activan en diferentes momentos del ciclo de vida de la escena. Estas funciones actualizan los contadores en el controlador de vista y realizan acciones relacionadas con eventos de la escena.

**`AppDelegate.swift` - Clase AppDelegate:**

La clase `AppDelegate` es responsable de gestionar eventos relacionados con el ciclo de vida de la aplicación. Contiene propiedades como `launchCount` y `configurationForConnectingCount`, que se utilizan para rastrear cuántas veces se ha iniciado la aplicación y cuántas configuraciones se han realizado para conectar escenas.

Las funciones más relevantes de esta clase son:

- `application(_:didFinishLaunchingWithOptions:)`: Se activa cuando la aplicación ha terminado de iniciarse. En esta función, el contador `launchCount` se incrementa, lo que permite realizar un seguimiento del recuento de inicios de la aplicación.

- `application(_:configurationForConnecting:options:)`: Se activa cuando se configura una nueva sesión de escena. Aquí, el contador `configurationForConnectingCount` se incrementa cada vez que se configura una nueva sesión de escena.

- `application(_:didDiscardSceneSessions:)`: Se activa cuando el usuario descarta una sesión de escena. Esta función se utiliza para liberar recursos relacionados con sesiones de escenas descartadas que ya no son necesarias.

En resumen, este código se utiliza para rastrear y mostrar información sobre eventos y contadores de eventos relacionados con la aplicación y escenas en la interfaz de usuario. Las clases `SceneDelegate` y `AppDelegate` se utilizan para administrar contadores y eventos del ciclo de vida, mientras que el controlador de vista `ViewController` es responsable de mostrar esta información en la interfaz de usuario. Esto puede resultar útil para la depuración, el seguimiento del uso y la recopilación de datos relacionados con la interacción de la aplicación con el usuario.

##### AppLifeCycle-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/3c6a937c-8daf-4e3c-a10d-45924191abc8

El código proporcionado se relaciona con la gestión del ciclo de vida de una aplicación iOS. Consta de dos partes principales: `SceneDelegate` y `AppDelegate`. Ambos son cruciales para controlar eventos y específicos.
