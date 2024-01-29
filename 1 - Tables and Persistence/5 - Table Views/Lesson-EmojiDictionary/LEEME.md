### `Diccionario Emoji`

La aplicacion es una implementación de una vista de tabla que se utiliza para mostrar una lista de emojis y permite operaciones como eliminar y reorganizar elementos en la lista.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/62438f6f-a251-494b-b9a5-31f8fb897b64

El núcleo de la implementación es una clase llamada `EmojiTableViewController` que hereda de `UITableViewController`. En términos de programación, "hereda" significa que esta clase hereda propiedades y métodos de la clase base `UITableViewController`, que es una vista de tabla predefinida en iOS. Esto facilita la creación de una vista de tabla personalizada.

Dentro de esta clase, se declara una matriz llamada `emojis`, que contiene objetos de la estructura `Emoji`. En programación, una "estructura" es un tipo de datos que agrupa propiedades relacionadas. En este caso, "Emoji" es una estructura que representa un emoji y tiene cuatro propiedades clave: "símbolo", "nombre", "descripción" y "uso". Estas propiedades almacenan el símbolo del emoji, su nombre, una descripción y su uso, respectivamente.

La vista de tabla se configura en los métodos `viewDidLoad` y `viewWillAppear`. En `viewDidLoad`, se establece un botón "Editar" en la barra de navegación, lo que permite a los usuarios editar la lista de emojis. Además, la propiedad `cellLayoutMarginsFollowReadableWidth` de la tabla se ajusta para seguir el ancho del contenido legible. Esto es relevante para el diseño de lenguaje de derecha a izquierda y garantiza una apariencia adecuada en diferentes idiomas.

Los métodos relacionados con la tabla son necesarios para configurar y controlar la vista de la tabla. El método `numberOfSections(in tableView:)` devuelve el número de secciones de la tabla, que en este caso es 1. "Secciones" se refiere a la división de la tabla en distintas partes. `tableView(_:numberOfRowsInSection:)` devuelve el número de filas en la sección 0, que es igual al número de emojis en la matriz. Cada "fila" representa un elemento de la lista.

El método `tableView(_:cellForRowAt:)` es crucial para configurar cada celda de la tabla. En este método, se siguen cuatro pasos clave:
1. **Quitar celda de la cola:** Esto se refiere a obtener una celda de la cola de reutilización, que es una técnica eficiente para administrar celdas en la vista de tabla.
2. **Obtener modelo de objeto:** El emoji correspondiente se recupera de la matriz `emojis` según el índice de fila.
3. **Configurar celda:** El celular está configurado con información de emoji, incluido el símbolo y la descripción.
4. **Devolver celda:** Finalmente, se devuelve la celda configurada.

El método `tableView(_:didSelectRowAt:)` se llama cuando se toca una celda y muestra el símbolo del emoji seleccionado junto con su índice en la lista. Este método permite la interacción del usuario con los emojis.

Además, se proporcionan métodos para editar la tabla, como `tableView(_:commit:forRowAt:)` para eliminar emojis de la lista y `tableView(_:moveRowAt:to:)` para reorganizar emojis usando arrastrar y soltar. gestos. Estos métodos son esenciales para proporcionar funcionalidad de edición en la vista de tabla.

En resumen, este código es una implementación de una vista de tabla en iOS que muestra una lista de emojis, lo que permite editarlos y reorganizarlos. La estructura "Emoji" se utiliza para organizar la información de cada emoji. La explicación técnica detallada que se proporciona aquí cubre aspectos fundamentales de la implementación, incluida la herencia de clases, el uso de estructuras para modelar datos y la configuración de la vista de tabla en una aplicación iOS.
