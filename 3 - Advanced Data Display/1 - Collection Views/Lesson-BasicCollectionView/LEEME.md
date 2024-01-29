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


