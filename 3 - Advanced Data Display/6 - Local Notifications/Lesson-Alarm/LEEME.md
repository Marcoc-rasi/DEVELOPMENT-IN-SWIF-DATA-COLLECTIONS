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



