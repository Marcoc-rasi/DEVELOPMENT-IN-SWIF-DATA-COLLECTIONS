# Guardando Datos

Anteriormente en esta unidad, aprendí cómo la arquitectura Modelo-Vista-Controlador (MVC) me ayuda a separar los roles de los datos, las vistas y los objetos auxiliares que se comunican entre ellos. En casi todos los casos, los datos son extremadamente importantes para mis usuarios. Si ingresan información en una aplicación, esperan que persista, o continúe existiendo, dentro de la aplicación, incluso después de que esta se haya cerrado.
En esta lección, aprendí cómo persistir datos utilizando Codable, un protocolo del que aprendí en una lección anterior.

## Lo que Aprendí
- Cómo escribir y acceder a archivos en el directorio Documents de mi aplicación.
- Cómo serializar datos del modelo a un formato que se puede guardar.
- Cómo deserializar datos guardados a datos del modelo que se pueden utilizar en la aplicación.

## Vocabulario
- `archivar`: Proceso de guardar datos en un formato que se puede recuperar más tarde.
- `Codable`: Protocolo que permite a los tipos de datos ser codificados y decodificados para el almacenamiento y la recuperación de datos.
- `Datos`: Tipo de datos que almacena información binaria.
- `directorio Documents`: Carpeta en la que una aplicación puede almacenar archivos que espera preservar entre ejecuciones y copias de seguridad.
- `persistir, persistencia`: Mantener datos incluso después de cerrar y volver a abrir la aplicación.
- `plist`: Formato de archivo de propiedad de lista utilizado para almacenar datos de configuración en iOS.
- `aislamiento`: Mecanismo que limita el acceso de una aplicación a su propio espacio de almacenamiento y recursos.
- `serialización`: Proceso de convertir datos en un formato que se puede almacenar o transmitir y luego restaurarlos.
- `desarchivar`: Proceso de recuperar datos previamente archivados para su uso en la aplicación.

