# Vistas de Tabla

iOS se ejecuta en dispositivos potentes que pueden manejar tareas informáticas sofisticadas, lo que permite a los usuarios trabajar con conjuntos grandes de datos. Como programador, ¿cómo puedes mostrar datos de manera elegante para que sea eficiente verlos y manipularlos?
Ingresa `UITableView`, una de las vistas más ampliamente utilizadas en iOS. Las vistas de tabla son perfectas para mostrar eficientemente cantidades grandes o pequeñas de información y para gestionar listas de datos dinámicas o estáticas.
En esta lección, aprendí por qué las vistas de tabla son tan populares entre los desarrolladores de iOS. Esta lección se centró en vistas de tabla dinámicas; la siguiente lección de vistas de tabla cubrirá vistas de tabla estáticas.

## Lo que Aprendí
- Cómo usar estilos predefinidos de `UITableViewCell` para personalizar mis vistas de tabla.
- Cómo proporcionar datos dinámicos a una vista de tabla.
- Cómo responder a la interacción del usuario en una vista de tabla.
- Cómo actualizar los datos de la vista de tabla.

## Vocabulario
- `vista accesoria`: Elemento adicional que se muestra en una celda de vista de tabla, como un botón o un indicador.
- `en cola`: Proceso de almacenar y reutilizar celdas de vista de tabla para mejorar el rendimiento.
- `dinámico`: Que cambia o se adapta según las circunstancias.
- `índice de ruta`: Identificador que representa la posición de una celda en una vista de tabla.
- `margen de legibilidad`: Espacio adicional alrededor del contenido de una celda para mejorar la presentación.
- `control de reordenación`: Función que permite al usuario cambiar el orden de las celdas en una vista de tabla.
- `vista de tabla`: Componente que muestra una lista de elementos en filas y columnas.
- `celda de vista de tabla`: Elemento individual en una vista de tabla que contiene datos y se muestra en una fila.
- `basado en cero`: Sistema donde la numeración comienza desde cero en lugar de uno.

#### 5 - Vistas de tabla

##### Rastreador de comidas - Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/7c0dd144-8529-4008-bd24-9f7aa9157600

El código que he compartido representa una aplicación llamada "Meal Tracker" que utiliza Swift y la plataforma iOS para realizar un seguimiento de las comidas y los alimentos que contienen. La aplicación consta de tres partes esenciales: la estructura `Meal`, la estructura `Food` y la clase `FoodTableViewController`.

La estructura "Comida" se utiliza para modelar información sobre las comidas. Cada instancia de "Meal" tiene dos propiedades cruciales:
- `nombre`: esta propiedad almacena el nombre de la comida, como "Desayuno", "Almuerzo" o "Cena".
- `food`: Esta propiedad es un conjunto de elementos del tipo `Food`, que representan los alimentos que forman parte de esa comida.

La estructura "Alimentos" se utiliza para modelar información sobre alimentos individuales. Cada instancia de "Comida" tiene dos propiedades clave:
- `name`: Almacena el nombre de la comida, por ejemplo, “Waffles” o “Avocado Toast”.
- `descripción`: almacena una descripción detallada de la comida, como "Una pequeña pila de panqueques de suero de leche puede ser una delicia dulce y saciante para disfrutar en cualquier momento del día".

La clase `FoodTableViewController` es un controlador de vista que hereda de `UITableViewController`. Se encarga de mostrar información sobre comidas y alimentos en una vista de tabla. El controlador se inicializa con una propiedad llamada "meals", que contiene una matriz de instancias de "Meal" que representan el desayuno, el almuerzo y la cena. Cada comida tiene un nombre y una lista de alimentos asociados.

El ciclo de vida del controlador de vista comienza con el método `viewDidLoad`, que se utiliza para cualquier configuración inicial. Posteriormente se implementan varios métodos del protocolo `UITableViewDataSource` para gestionar la vista de tabla:
- `numberOfSections(in tableView:)` devuelve el número de secciones en la vista de tabla, que coincide con el número de comidas.
- `tableView(_:numberOfRowsInSection:)` devuelve el número de filas de una sección, equivalente al número de alimentos de una comida específica.
- `tableView(_:cellForRowAt:)` configura cada celda de la vista de tabla con el nombre y descripción del alimento correspondiente.
- `tableView(_:titleForHeaderInSection:)` proporciona el título de cada sección en la vista de tabla, que es el nombre de la comida.

En resumen, este código representa una aplicación que permite realizar un seguimiento de las comidas y sus alimentos asociados. Las estructuras `Meal` y `Food` se utilizan para organizar la información, y la clase `FoodTableViewController` administra la interfaz de usuario para mostrar los datos en una vista de tabla.

##### Diccionario Emoji

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/01503d52-4ad7-4598-b691-2c7f03e8dc98

Por supuesto, daré la explicación en inglés, resaltando las palabras clave o términos importantes con comillas invertidas:

El código es una implementación de una vista de tabla que se utiliza para mostrar una lista de emojis y permite operaciones como eliminar y reorganizar elementos en la lista.

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
