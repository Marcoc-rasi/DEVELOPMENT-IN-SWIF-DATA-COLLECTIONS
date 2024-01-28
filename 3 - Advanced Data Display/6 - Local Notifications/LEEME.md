# `Notificaciones Locales`

Las notificaciones son una parte esencial de la experiencia en iOS, permitiendo que las aplicaciones se comuniquen con sus usuarios incluso cuando están cerradas. He aprendido sobre el marco UserNotifications y cómo programar y gestionar notificaciones locales.

## `Lo que Aprendí`

- Comprender la diferencia entre notificaciones locales y remotas
- Configurar una aplicación para recibir notificaciones locales
- Programe notificaciones locales que utilicen distintas combinaciones de credenciales, alertas y sonidos.
- Crear una categoría de notificación con dos acciones diferentes que un usuario puede realizar
- Crear una notificación que reciba entrada de texto como respuesta del usuario.


## `Vocabulario`
- `notificación con acción` (actionable notification): Una notificación que permite al usuario realizar acciones directamente desde la notificación.
- `insignia` (badge): Un número o símbolo que aparece en el ícono de una aplicación para indicar la presencia de nuevas notificaciones o mensajes.
- `banderín` (banner): Una forma común de presentar notificaciones en la parte superior de la pantalla.
- `notificación local` (local notification): Una notificación que se programa y se muestra en el dispositivo del usuario.
- `categoría de notificación` (notification category): Una clasificación que permite al usuario gestionar la forma en que se presentan las notificaciones.
- `notificación remota` (remote notification): Una notificación enviada desde un servidor remoto a un dispositivo.


### `Administrador de facturas`

Extendí el proyecto BillManager en la carpeta de recursos. En la actualidad, BillManager permite a los usuarios hacer un seguimiento de las facturas pendientes y marcarlas como pagadas o pendientes. Mi tarea fue agregar notificaciones locales para recordar a los usuarios los pagos pendientes.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/63f6454c-9645-4fa0-9d8c-5e31c2967886

El código proporcionado pertenece a una aplicación llamada "BillManager" y consta de varias secciones que funcionan juntas para administrar las facturas. La aplicación se centra en gestionar los detalles de facturación, incluidos recordatorios y notificaciones. Aquí hay una explicación continua del código, destacando aspectos clave:

**Modelo de datos básicos**:
- La lógica central de la aplicación se encuentra en la estructura "Bill". Cada instancia de "Bill" representa una factura y contiene atributos como el monto, la fecha de vencimiento, el identificador de notificación, la fecha de pago, el beneficiario y la fecha de recordatorio.

**Extensiones de funcionalidad**:
- En el archivo "Bill+Extras.swift" se definen una serie de extensiones para la estructura `Bill`, agregando funcionalidad adicional relacionada con notificaciones, recordatorios y formato de fechas.

**Recordatorios de programación**:
- La función `scheduleReminder(en fecha: Fecha, finalización: @escaping (Bill) ->())` permite programar un recordatorio de una factura en una fecha específica. Esto se hace utilizando el marco `UserNotifications` de iOS. Comprueba si la aplicación tiene permisos para enviar notificaciones antes de programar un recordatorio.

**Eliminar recordatorios**:
- La función `removeReminder()` elimina cualquier recordatorio previamente programado para una factura. Esto implica eliminar la solicitud de notificación pendiente y borrar las propiedades "notificationID" y "remindDate" de la factura.

**Gestión de permisos de notificación**:
- La función `authorizeIfNeeded(completion: @escaping (Bool) -> ())` comprueba si la aplicación tiene permisos para enviar notificaciones. Dependiendo del estado del permiso, puede solicitar autorización al usuario y llamar al controlador de finalización con un valor booleano que indica si se otorgaron los permisos.

**Modelo de datos central (base de datos)**:
- La clase `Database` sirve como almacén de datos central para facturas. Permite agregar, actualizar, eliminar y recuperar facturas y las mantiene en un diccionario en memoria.

**Persistencia de datos**:
- Las facturas se almacenan en un archivo JSON en el directorio de documentos de la aplicación. La carga y el guardado de facturas se manejan mediante las funciones `loadBills()` y `saveBills(_ bills: [UUID:Bill])`, respectivamente.

**Notificaciones de actualización**:
- La clase `Database` emite una notificación personalizada llamada `billUpdatedNotification` cuando ocurren cambios en las facturas. Esto permite que otras partes de la aplicación estén informadas sobre las actualizaciones.

**Comparación de facturas**:
- Las facturas se pueden comparar y ordenar según su fecha de vencimiento y monto. La implementación se realiza en la extensión `Bill`.

**Interfaz de usuario (UI)**:
- El código no incluye la implementación de la interfaz de usuario en sí, pero asume la existencia de una interfaz de usuario donde los usuarios pueden ver y editar facturas.

En conjunto, este código crea una aplicación para administrar facturas, lo que permite a los usuarios agregar, editar y programar recordatorios de sus facturas. Además, se encarga de la persistencia de los datos y la gestión de notificaciones relacionadas con facturas. Las extensiones brindan funcionalidad adicional para una gestión eficiente de las facturas.

### `Alarma`

Este proyecto consiste en la estructura básica de una aplicación de alarma simple que permite crear una alarma a la vez. He implementado la lógica para crear una alarma, obtener autorización para enviar notificaciones, programar notificaciones locales y ofrecer a los usuarios la opción de posponer su alarma.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a572abb8-9764-4079-a479-5b8b566bdecc

El código proporcionado se centra en gestionar alarmas y notificaciones en una aplicación de iOS. La estructura central involucrada se denomina "Alarma". Esta estructura representa una alarma y abarca varias funcionalidades clave.

**Notificación personalizada:**
El código define una notificación personalizada llamada "alarmUpdated", que se utiliza para informar a otras partes de la aplicación sobre actualizaciones en alarmas programadas. La notificación se define como `static let alarmUpdated = Notification.Name("alarmUpdated")`.

**La estructura de `Alarma`:**
La estructura "Alarma" encapsula la lógica para programar y desprogramar alarmas, así como la autorización de notificación. Incluye las siguientes propiedades y métodos importantes:

- `notificationId`: una propiedad privada que almacena un identificador único para la notificación asociada con la alarma.
- `date`: Propiedad que almacena la fecha y hora de la alarma.
- `init(fecha: Fecha, ID de notificación: Cadena?)`: un inicializador que crea una instancia de `Alarma` con una fecha y un identificador de notificación personalizado (genera un UUID si no se proporciona).
- `schedule(completion: @escaping (Bool) -> ())`: Este método programa la notificación de la alarma. Comprueba la autorización de notificación, configura el contenido de la notificación y programa la notificación con un disparador basado en la fecha y hora de la alarma.
- `unschedule()`: Este método cancela la notificación de la alarma.
- `authorizeIfNeeded(completion: @escaping (Bool) -> ())`: Comprueba si la aplicación tiene permiso para enviar notificaciones y solicita permiso si es necesario.

**Codificación y Decodificación:**
El código amplía la estructura "Alarma" para que sea "Codificable", lo que permite codificar y decodificar instancias de "Alarma". La extensión incluye propiedades estáticas como "notificationCategoryId" y "snoozeActionID" para identificar categorías de notificación y acciones de repetición.

La propiedad `alarmURL` especifica la ubicación en el sistema de archivos donde se almacena la información sobre la alarma programada. La propiedad "programada" se utiliza para obtener y configurar la alarma programada actualmente. Al obtenerlo, intenta cargar información de alarma desde el sistema de archivos y decodificarla. Al configurarlo, codifica la alarma y la guarda en el sistema de archivos o elimina la información de la alarma si está configurada en "nil". Además, se publica la notificación personalizada "alarmUpdated" para informar sobre actualizaciones en las alarmas programadas.

En resumen, el código proporcionado es esencial para administrar alarmas, notificaciones y permisos de notificación en una aplicación de iOS. La estructura "Alarma" maneja la programación y desprogramación de alarmas, mientras que la notificación personalizada "alarmaActualizada" facilita la comunicación con respecto a los cambios en las alarmas programadas dentro de la aplicación. La extensión "Codable" permite guardar y cargar información de alarmas en el sistema de archivos.


