# `Collection Views`

En esta lección, he aprendido cómo organizar datos en una cuadrícula utilizando los bloques de construcción básicos para vistas de colección y un diseño composicional simple. 

## `Lo que Aprendí`

- Identificar aplicaciones o componentes dentro de aplicaciones que pueden haberse implementado con una vista de colección
- Describir casos de uso adecuados para mostrar datos en vistas de colección.
- Proporcionar datos a una vista de colección.
- Crear celdas prototipo en Interface Builder
- Utilice un diseño compositivo básico.
- Describir cuándo utilizar diseños compositivos simples o complejos.

## `Vocabulario`
- `vista de colección`: Componente de interfaz de usuario que organiza y muestra contenido en una cuadrícula.
- `celda de vista de colección`: Elemento individual en una vista de colección que muestra información específica.
- `diseño de vista de colección`: Diseño que define la apariencia y organización de las celdas en una vista de colección.
- `diseño compositivo`: Enfoque de diseño que utiliza bloques de construcción modulares para crear diseños flexibles y reutilizables.
- `diseño de flujo`: Tipo de diseño de vista de colección que organiza las celdas en una secuencia lineal.

## `1 - Vistas de colección`

### `Diccionario Emoji`

En este laboratorio, aplicarás lo aprendido en un proyecto anterior sobre vistas de tabla: EmojiDictionary. En esta ocasión, lo implementarás utilizando una vista de colección en lugar de una vista de tabla."

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/d34d45df-3457-4fed-b3b0-5b0e7ca60298

El código proporcionado, que abarca múltiples partes interconectadas, crea una aplicación de diccionario emoji para iOS. En primer lugar, está la estructura "Emoji", marcada como "Codable", para representar un emoji. Esta estructura almacena cuatro atributos esenciales: "símbolo", "nombre", "descripción" y "uso". Cumplir con "Codable" permite codificar y decodificar fácilmente emojis en formato JSON, simplificando su almacenamiento y transmisión en una aplicación de iOS. .

La clase `EmojiCollectionViewController`, derivada de `UICollectionViewController`, controla la vista de colección que muestra emojis. Al configurar el diseño de la vista de la colección utilizando objetos como `NSCollectionLayoutItem`, `NSCollectionLayoutGroup` y `NSCollectionLayoutSection`, se logra la apariencia deseada. La carga de emojis ocurre durante la inicialización de la vista de colección y se actualiza cada vez que aparece en la pantalla.

La clase `EmojiCollectionViewCell` personaliza las celdas de la vista de colección para presentar emojis. Sus etiquetas, etiquetadas con "@IBOutlet", muestran el "símbolo", el "nombre" y la "descripción" del emoji. La función `actualizar(con emoji)` se encarga de reflejar correctamente estos atributos en las celdas.

Por otro lado, la clase `AddEditEmojiTableViewController` se utiliza para agregar o editar emojis en una tabla. Los campos de texto, como `symbolTextField`, `nameTextField`, `descriptionTextField` y `usageTextField`, se utilizan para ingresar o modificar detalles de emoji. La habilitación del botón guardar se controla a través de la función `updateSaveButtonState`, que verifica la idoneidad de los datos ingresados, incluida la presencia de un solo `emoji` en `symbolTextField`. La función `textEditingChanged` actualiza el estado del botón guardar en respuesta a los cambios en los campos de texto. Por último, la clase prepara información de emoji para su posterior almacenamiento o actualización en `prepare(for segue: UIStoryboardSegue, sender: Any?).`

En resumen, estos fragmentos de código permiten a los usuarios ver, agregar y modificar emojis en la interfaz de usuario de una aplicación de iOS. Las estructuras y clases están meticulosamente diseñadas para brindar una experiencia integral en la gestión de emojis dentro de la aplicación. La conformidad con "Codable" facilita la manipulación de datos emoji, mientras que las clases `EmojiCollectionViewController` y `AddEditEmojiTableViewController` manejan la presentación y edición de emoji en la vista de colección y la tabla, respectivamente. La clase `EmojiCollectionViewCell` personaliza la apariencia visual de los emojis en la vista de colección, asegurando su visualización adecuada. La interacción y la lógica de la aplicación se implementan de manera consistente en todo el código, brindando una experiencia integrada en la gestión de emoji dentro de la aplicación.

### `Vista de colección básica`

En esta lección, aprenderás a organizar datos en una cuadrícula utilizando los bloques básicos de construcción para vistas de colección y un diseño compositivo simple.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/86bd098a-37da-4227-b8f1-6017a680eb68

El código proporcionado es una implementación de un controlador de vista de colección en una aplicación de iOS. En este código, se define una `clase` llamada `BasicCollectionViewController`, que hereda de la clase `UICollectionViewController`. Esta "clase" es responsable de ser administrada por una vista de colección en la interfaz de usuario.

La vista de colección está configurada para mostrar una lista de "nombres de estados" en los Estados Unidos, que se almacenan en una "constante privada" llamada "elementos". Esta constante contiene una matriz de cadenas que representan los "nombres de estado".

La `clase` `BasicCollectionViewCell` se utiliza para personalizar la apariencia de las celdas en la vista de colección. Esta "clase" es una subclase de "UICollectionViewCell" y contiene una propiedad llamada "label", que es una instancia de la clase "UILabel". La "etiqueta" se declara como una "salida de interfaz" utilizando el atributo "@IBOutlet", lo que sugiere que se conectará a una "etiqueta" en el archivo de interfaz de usuario.

En el método `viewDidLoad` de la `clase` `BasicCollectionViewController`, el diseño de la vista de colección se configura utilizando un método llamado `generateLayout`. El diseño de la vista de colección se establece mediante "UICollectionViewCompositionalLayout", que especifica la estructura de la vista, incluidos "elementos", "grupos" y "secciones". En este caso, se crea un diseño con una sola columna y celdas de altura fija.

El método `numberOfItemsInSection` se utiliza para determinar el `número de elementos` que se mostrarán en la vista de colección. Devuelve el "número de elementos" en la matriz "elementos".

El método `cellForItemAt` es responsable de proporcionar las celdas que se mostrarán en la vista de colección. Se obtiene una celda reutilizable identificada por "reuseIdentifier" y el "texto" de la matriz "items" se asigna a la propiedad "texto" de la "etiqueta" en la celda personalizada.

En resumen, este código crea una vista de colección que muestra una lista de "nombres de estado" en celdas personalizadas. La personalización de las celdas se logra a través de la `clase` `BasicCollectionViewCell`, que contiene una `etiqueta` para mostrar el texto. La estructura de la vista de colección se define en el método `generateLayout` y se utiliza un `UICollectionViewCompositionalLayout` para aplicar el diseño.

