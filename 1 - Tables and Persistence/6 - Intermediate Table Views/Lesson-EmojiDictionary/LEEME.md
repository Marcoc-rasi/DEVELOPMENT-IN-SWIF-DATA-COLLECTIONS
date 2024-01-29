### `Diccionario Emoji`

En la aplicación se crea una lista de emojis con una celda personalizada de tabla que agregará una tercera etiqueta más grande alineada con el borde izquierdo de la celda para mostrar el emoji.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/7d8b2588-900f-4f3f-af79-7c4847f2c4eb

La clase `EmojiTableViewController` es responsable de mostrar la lista de emojis en una vista de tabla. Esta clase hereda de `UITableViewController` y contiene una propiedad llamada `emojis` que almacena una matriz de objetos `Emoji`. La vista de tabla se configura con la información de estos objetos, incluido su símbolo, nombre, descripción y uso.

El ciclo de vida de la vista de tabla se controla en los métodos `viewDidLoad` y `viewWillAppear`. El primero establece la apariencia inicial de la vista, incluida la configuración del botón de edición y la altura de la celda. El último método es responsable de recargar los datos en la vista de tabla cada vez que aparecen.

La clase `EmojiTableViewCell` define la apariencia de las celdas de la vista de tabla. Contiene etiquetas de texto para mostrar el símbolo, el nombre y la descripción de cada emoji. El método `update(with emoji: Emoji)` personaliza una celda con la información de un emoji específico.

La clase `AddEditEmojiTableViewController` se utiliza para agregar o editar emojis. Esta vista contiene campos de texto para el símbolo, nombre, descripción y uso del emoji. El estado del botón Guardar se actualiza automáticamente en función de la validez de los datos ingresados en estos campos. Además, el método `containsSingleEmoji(_ textField: UITextField)` comprueba si el campo de símbolo contiene un solo emoji.

Al seleccionar el botón Guardar, la información se guarda en una instancia de "Emoji". La preparación de esta información se realiza en el método `prepare(for segue: UIStoryboardSegue, sender: Any?)`. El flujo de datos entre la vista de edición y la vista de lista se gestiona mediante el identificador de transición `saveUnwind`.

En resumen, el código proporciona una aplicación para iOS que permite la gestión de una lista de emojis con operaciones para agregar, editar y eliminar. Los emojis se representan mediante la estructura "Emoji" y se muestran en una vista de tabla. La vista de edición garantiza la integridad de los datos antes de guardarlos y comunica los cambios a la vista de lista. El código sigue las mejores prácticas para el desarrollo de aplicaciones iOS aprovecha el protocolo "Codable" para una fácil serialización de objetos en formato JSON.

