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
