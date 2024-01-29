### `EmojiDictionary guardar datos`

El objetivo de este laboratorio es implementar la persistencia de información entre los lanzamientos de la aplicación mediante el uso del protocolo Codable, el FileManager y métodos en Data. Se añadirá persistencia a los objetos Emoji, permitiendo que los cambios realizados en la lista de emojis persistan entre los reinicios de la aplicación.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5e6ec3de-e7bf-4d42-a985-0ba634bc49d3

**Estructura `Emoji`:**
Se define una estructura llamada "Emoji" para representar un emoji. Esta estructura contiene propiedades para el "símbolo", "nombre", "descripción" y "uso" de un emoji. Además, se establece una propiedad calculada llamada `archiveURL` para determinar la ubicación donde se almacenarán los emojis en un archivo de lista de propiedades (plist). Se proporciona una lista estática denominada `sampleEmojis`, que contiene emojis de ejemplo, que es útil para inicializar la aplicación con datos predefinidos. Los métodos estáticos `saveToFile(emojis: [Emoji])` y `loadFromFile()` también se implementan para guardar y cargar emojis desde un archivo plist. Esto garantiza la persistencia de los datos, lo que permite que los emojis se almacenen localmente y se recuperen según sea necesario.

**Clase `EmojiTableViewController`:**
Se define una clase llamada `EmojiTableViewController`, que hereda de `UITableViewController`. Esta clase es responsable de administrar la vista de tabla que muestra la lista de emojis. En su método `viewDidLoad`, realiza configuraciones iniciales, como asignar un botón de edición a la barra de navegación y cargar emojis desde el almacenamiento. Además, implementa una serie de métodos relacionados con la gestión de tablas, como actualizaciones de celdas, eliminación de emojis y reordenación de elementos.

**Clase `EmojiTableViewCell`:**
La clase `EmojiTableViewCell` representa una celda personalizada para la tabla. Contiene etiquetas para mostrar el símbolo, el nombre y la descripción del emoji. El método `update(with emoji: Emoji)` es responsable de actualizar el contenido de la celda con información de emoji.

Clase **`AddEditEmojiTableViewController`:**
La clase `AddEditEmojiTableViewController` gestiona la adición o edición de emojis. Esta vista de tabla contiene campos de texto para ingresar el símbolo, el nombre, la descripción y el uso del emoji. La activación del botón Guardar depende de la validación de los campos de texto y de si se ha ingresado un solo emoji en el campo de símbolo. Además, este controlador permite la transición de relajación para guardar emojis.

En conjunto, este código construye una aplicación de iOS que permite a los usuarios agregar, editar y ver emojis. Utiliza las estructuras `Emoji` y clases personalizadas para administrar los datos y la interfaz de usuario. La persistencia de los datos se logra a través de archivos de Lista de propiedades, lo que garantiza que los emojis permanezcan disponibles incluso después de cerrar la aplicación. Este código se presenta de manera eficiente y sigue las prácticas de desarrollo de iOS mediante el uso de `UITableViewController`, `UITextField` y métodos de validación para una experiencia de usuario consistente y funcional.
