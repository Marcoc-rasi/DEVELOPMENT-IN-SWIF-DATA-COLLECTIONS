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

#### 7 - Guardar datos

##### EmojiDictionary guardar datos

Resumen

El objetivo de este laboratorio es implementar la persistencia de información entre los lanzamientos de la aplicación mediante el uso del protocolo Codable, el FileManager y métodos en Data. Se añadirá persistencia a los objetos Emoji, permitiendo que los cambios realizados en la lista de emojis persistan entre los reinicios de la aplicación.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8c820d0a-85f2-4a37-9bbb-ea11a038ad3e

**Estructura `Emoji`:**
Se define una estructura llamada "Emoji" para representar un emoji. Esta estructura contiene propiedades para el "símbolo", "nombre", "descripción" y "uso" de un emoji. Además, se establece una propiedad calculada llamada `archiveURL` para determinar la ubicación donde se almacenarán los emojis en un archivo de lista de propiedades (plist). Se proporciona una lista estática denominada `sampleEmojis`, que contiene emojis de ejemplo, que es útil para inicializar la aplicación con datos predefinidos. Los métodos estáticos `saveToFile(emojis: [Emoji])` y `loadFromFile()` también se implementan para guardar y cargar emojis desde un archivo plist. Esto garantiza la persistencia de los datos, lo que permite que los emojis se almacenen localmente y se recuperen según sea necesario.

**Clase `EmojiTableViewController`:**
Se define una clase llamada `EmojiTableViewController`, que hereda de `UITableViewController`. Esta clase es responsable de administrar la vista de tabla que muestra la lista de emojis. En su método `viewDidLoad`, realiza configuraciones iniciales, como asignar un botón de edición a la barra de navegación y cargar emojis desde el almacenamiento. Además, implementa una serie de métodos relacionados con la gestión de tablas, como actualizaciones de celdas, eliminación de emojis y reordenación de elementos.

**Clase `EmojiTableViewCell`:**
La clase `EmojiTableViewCell` representa una celda personalizada para la tabla. Contiene etiquetas para mostrar el símbolo, el nombre y la descripción del emoji. El método `update(with emoji: Emoji)` es responsable de actualizar el contenido de la celda con información de emoji.

Clase **`AddEditEmojiTableViewController`:**
La clase `AddEditEmojiTableViewController` gestiona la adición o edición de emojis. Esta vista de tabla contiene campos de texto para ingresar el símbolo, el nombre, la descripción y el uso del emoji. La activación del botón Guardar depende de la validación de los campos de texto y de si se ha ingresado un solo emoji en el campo de símbolo. Además, este controlador permite la transición de relajación para guardar emojis.

En conjunto, este código construye una aplicación de iOS que permite a los usuarios agregar, editar y ver emojis. Utiliza las estructuras `Emoji` y clases personalizadas para administrar los datos y la interfaz de usuario. La persistencia de los datos se logra a través de archivos de Lista de propiedades, lo que garantiza que los emojis permanezcan disponibles incluso después de cerrar la aplicación. Este código se presenta de manera eficiente y sigue las prácticas de desarrollo de iOS mediante el uso de `UITableViewController`, `UITextField` y métodos de validación para una experiencia de usuario consistente y funcional.
