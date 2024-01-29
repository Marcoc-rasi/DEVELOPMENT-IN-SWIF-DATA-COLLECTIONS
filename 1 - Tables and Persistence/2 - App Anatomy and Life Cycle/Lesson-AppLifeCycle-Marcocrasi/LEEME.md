### `AppLifeCycle-Marcocrasi`

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

