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

## Aplicaciones de vídeos

### AppEventCount-Marcocrasi - Lab

Las siete etiquetas se actualizan con los eventos del ciclo de vida de la aplicación. Las etiquetas se refrescan correctamente cuando el usuario desencadena diferentes eventos, como navegar a la pantalla de inicio y regresar, o activar la interfaz de cambio de aplicaciones.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acaba5bc-fab7-4b97-b19c-719de61afe19

El código se divide en tres partes clave: el controlador de vista `ViewController`, la clase `SceneDelegate` y la clase `AppDelegate`. Estas partes trabajan juntas para rastrear y administrar eventos relacionados con el ciclo de vida de una aplicación iOS. Se utilizan para realizar un seguimiento de eventos y contadores de eventos, lo que permite mostrar información relevante en la interfaz de usuario.

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

### AppLifeCycle-Marcocrasi

Esta aplicación se centra en la exploración de los archivos AppDelegate.swift y SceneDelegate.swift generados automáticamente por Xcode en cada nuevo proyecto. Su propósito es facilitar la comprensión de los métodos de delegado más comunes utilizados durante el ciclo de vida de la aplicación, especialmente durante transiciones como el cambio de primer plano a segundo plano.

Además, al ejecutar la aplicación en el simulador, se observan mensajes en la consola que indican eventos clave, como la finalización del lanzamiento de la aplicación, la conexión de la escena a la sesión, la entrada de la escena en primer plano y la activación de la escena.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e89203ff-51eb-4c9f-b8d2-4f4cf6112bf4

El código proporcionado se relaciona con la gestión del ciclo de vida de una aplicación iOS. Consta de dos partes principales: `SceneDelegate` y `AppDelegate`. Ambos son cruciales para controlar eventos y acciones específicas durante el ciclo de vida de la aplicación.

El `SceneDelegate` es responsable de manejar escenas en la aplicación, incluidos eventos como conectar una escena, desconexión, cambios de estado entre activo e inactivo y transiciones entre primer plano y fondo. Estas son las funciones clave de `SceneDelegate`:

- En `func scene(_ scene: UIScene, willConnectTo session: UISceneSession, opciones de conexiónOptions: UIScene.ConnectionOptions)`, tengo la oportunidad de configurar la escena y adjuntar la `window` a la escena proporcionada. En este caso, mi código simplemente imprime un mensaje "La escena se conectará a" y verifica si la escena es una instancia de "UIWindowScene".

- En `func sceneDidDisconnect(_ scene: UIScene)`, realizo la limpieza de recursos asociados con la escena cuando se desconecta, como cuando mi aplicación pasa a segundo plano o se descarta su sesión.

- `func sceneDidBecomeActive(_ scene: UIScene)` se llama cuando la escena pasa de inactiva a activa, lo que me permite reanudar las tareas que estaban en pausa.

- En `func sceneWillResignActive(_ scene: UIScene)`, realizo acciones cuando la escena está a punto de pasar de activa a inactiva, lo que podría deberse a interrupciones temporales como una llamada entrante.

- `func sceneWillEnterForeground(_ scene: UIScene)` lo uso cuando la escena vuelve al primer plano, lo que me permite deshacer los cambios realizados al entrar en segundo plano.

- Finalmente, se llama a `func sceneDidEnterBackground(_ scene: UIScene)` cuando la escena pasa al fondo, lo que permite que mi aplicación guarde datos, libere recursos compartidos y almacene información específica de la escena para restaurar su estado.

Por otro lado, el `AppDelegate` es responsable de gestionar los eventos de inicio y terminación de la aplicación:

- `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` se ejecuta al iniciar la aplicación y me permite personalizar y configurar la aplicación. En este caso, mi código simplemente imprime "La aplicación terminó de iniciarse" y devuelve "verdadero" para indicar un inicio exitoso.

- Se llama a la `aplicación func(_ aplicación: UIApplication, configuraciónForConnecting connectSceneSession: UISceneSession, opciones: UIScene.ConnectionOptions)` cuando se crea una nueva sesión de escena y me permite seleccionar una configuración de escena. Mi código imprime "Aplicación que configura una sesión de escena" y devuelve una configuración de escena predeterminada.

- `func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)` Lo uso cuando el usuario descarta una sesión de escena. Me permite liberar recursos específicos de las escenas descartadas ya que no se reutilizarán. Mi código imprime "La aplicación descartó las sesiones de escena".

En resumen, estos dos componentes, `SceneDelegate` y `AppDelegate`, son esenciales para controlar el ciclo de vida de una aplicación iOS, permitiendo acciones específicas en respuesta a eventos importantes como conexiones de escena, transiciones de estado y sesiones descartadas. El uso de declaraciones impresas en cada método es una herramienta útil para la depuración y el seguimiento de eventos.
