# `Dynamic Data`

Trabajar con conjuntos extensos de datos me ha enseñado que como desarrollador, es crucial ofrecer una forma eficiente de navegar por el contenido. Una práctica común es implementar una función de búsqueda o filtro para reducir la cantidad de resultados. Además, la gestión de la fuente de datos de una aplicación puede volverse engorrosa, especialmente con conjuntos de datos más grandes. La API de fuente de datos difusa surge para abordar estos problemas. Con una cantidad relativamente pequeña de código, puedo dirigir a la fuente de datos para que se administre (casi) por sí misma y controle su presentación en una tabla o vista de colección.

## `Lo que Aprendí`

- Utilizar `UISearchController`
- Demostrar y describir `UICollectionViewDiffableDataSource`

## `Vocabulario`
- `fuente de datos diferenciable` (diffable data source): Una fuente de datos que utiliza instantáneas para representar el estado actual de los datos y facilita las actualizaciones en una vista.
- `controlador de búsqueda` (search controller): Un componente que gestiona la barra de búsqueda y los resultados de búsqueda en una interfaz de usuario.
- `instantánea` (snapshot): Una representación inmutable del estado actual de los datos en una fuente de datos diferenciable.

### `Búsqueda de iTunes`

En este laboratorio, he aplicado mis nuevos conocimientos sobre vistas de colección, controladores de búsqueda y fuentes de datos difusas para actualizar la solución de la Búsqueda en iTunes (Parte 3). Comencé con una versión refactorizada de la solución, disponible en la carpeta de recursos. La solución ha sido mejorada para utilizar un controlador de vista personalizado, lo que me permite alternar entre las vistas de dos controladores de vista. (Los controladores de vista contenedor UIKit estándar incluyen UINavigationController y UITabBarController). También se ha actualizado para utilizar un controlador de búsqueda en lugar de una barra de búsqueda.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/72b160a8-931e-4277-bc98-bbe5af678187

El código presenta un conjunto de clases y estructuras diseñadas para implementar una aplicación iOS para buscar y mostrar artículos de una tienda, posiblemente vinculada a la tienda iTunes. Se destacan varios componentes clave en este código, y todos contribuyen a la funcionalidad general de la aplicación.

En primer lugar, se define la clase `StoreItemListTableViewController`, heredada de `UITableViewController`. Esta clase maneja la lógica relacionada con mostrar una lista de elementos en una tabla. El método `tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)` se utiliza para gestionar la selección de una fila en la tabla y deseleccionarla con animación.

La clase `StoreItemController` es crucial para obtener datos y administrar imágenes de artículos de la tienda. Contiene un conjunto de métodos asincrónicos para interactuar con una API web y recuperar información, así como imágenes asociadas con artículos de la tienda. Los errores personalizados se definen en la enumeración `StoreItemError` para manejar situaciones en las que no se pueden encontrar elementos o falta información de la imagen.

En el código, se utiliza el protocolo `UISearchResultsUpdating` y se define la clase `StoreItemContainerViewController`. Esta clase, que hereda de `UIViewController`, sirve como controlador principal que administra la interfaz de usuario para buscar y mostrar artículos de la tienda. Dentro de la clase, se configuran vistas, incluida una vista de tabla y una vista de colección, junto con un controlador de búsqueda (`UISearchController`) que permite a los usuarios buscar artículos en la tienda.

Las fuentes de datos (`tableViewDataSource` y `collectionViewDataSource`) se definen para la vista de tabla y la vista de colección, respectivamente, y se mantienen sincronizadas con los datos actualizados. Se gestionan tareas asincrónicas para cargar imágenes y cancelar tareas en curso, lo que garantiza un rendimiento eficiente de la aplicación.

La clase `StoreItem` es una estructura que representa un artículo de la tienda y se utiliza para decodificar información del artículo obtenida a través de una solicitud de red. El uso de "Codable" permite asignar claves JSON a propiedades de estructura y se proporciona un inicializador personalizado para manejar casos en los que no todos los campos están presentes en los datos JSON.

La estructura `SearchResponse` se utiliza para representar la respuesta de una búsqueda, que es una matriz de elementos de la tienda. Tanto la estructura `StoreItem` como `SearchResponse` son cruciales para procesar datos relacionados con los elementos de la tienda en la aplicación.

Finalmente, se definen las clases `ItemTableViewCell` y `ItemCollectionViewCell`, que son celdas personalizadas que se utilizan para mostrar información de elementos de la tienda en una vista de tabla y una vista de colección, respectivamente. Ambas clases heredan de celdas estándar y se ajustan al protocolo "ItemDisplaying". El protocolo define propiedades utilizadas para mostrar información del artículo, como el título, los detalles y la imagen.

Dentro de las extensiones de estas clases se implementa el método `configure(for item: StoreItem, storeItemController: StoreItemController) async`, que se encarga de configurar la celda con la información del item y gestionar la descarga asincrónica de imágenes. Este método es esencial para mostrar datos de manera eficiente en celdas personalizadas.

Juntas, estas clases y estructuras forman la base de una aplicación que permite a los usuarios buscar y ver artículos de la tienda, con la capacidad de cargar imágenes y gestionar eficientemente tareas asincrónicas. El código proporciona una estructura sólida para implementar esta funcionalidad, que abarca la gestión de datos hasta la presentación de la interfaz de usuario.

### `Vista de colección básica`

En esta lección, he aprendido sobre mi primer API que utiliza genéricos: `UICollectionViewDiffableDataSource`. Entendí cómo puede reducir el trabajo necesario para proporcionar datos a una vista de colección, ofreciéndome características estándar, como la animación de cambios, de manera automática.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b68afb0e-04ec-453e-a29c-d6181852cd69

En el fragmento de código proporcionado, se presenta una implementación de una vista de colección (UICollectionView) en un entorno de desarrollo iOS utilizando el lenguaje Swift. Esta vista de colección muestra una lista de los estados de Estados Unidos y proporciona una función de búsqueda en tiempo real.

Los estados de Estados Unidos se definen como una matriz constante denominada "elementos", que contiene todos los nombres de los estados. Esto es relevante ya que los datos se basan en esta matriz y se utilizan tanto para buscar como para mostrar dentro de la vista de colección.

Se ha creado una clase denominada `BasicCollectionViewController`, que hereda de `UICollectionViewController` y adopta el protocolo `UISearchResultsUpdating`. En esta clase se implementan funcionalidades clave, como la gestión de la barra de búsqueda y la presentación de datos dentro de la vista de colección.

La barra de búsqueda es administrada por un controlador de búsqueda llamado `searchController`, configurado para no oscurecer el fondo durante la presentación de los resultados. Esto es crucial para garantizar que los resultados de la búsqueda sean visibles para el usuario. Además, la opción de mantener la barra de búsqueda visible incluso cuando el usuario se desplaza por la vista de la colección está habilitada (`navigationItem.hidesSearchBarWhenScrolling = false`).

El método `createDataSource` es responsable de configurar un objeto `dataSource` de tipo `UICollectionViewDiffableDataSource` para administrar los datos en la vista de colección. Esto es relevante para presentar los elementos dentro de la vista de colección.

La función `updateSearchResults` se ejecuta cada vez que se realiza una búsqueda. Los resultados de la búsqueda se filtran según el texto ingresado en la barra de búsqueda y se aplican a la vista de colección. Esta actualización se realiza con animación para brindar una experiencia de usuario fluida.

El diseño de la vista de la colección se define en el método "generateLayout". En este diseño se define el tamaño de los elementos, el espacio entre ellos y otros aspectos visuales. Este diseño se adapta al contenido de la vista de colección y garantiza que los elementos se muestren correctamente.

Finalmente, se define una clase adicional llamada `BasicCollectionViewCell`, que hereda de `UICollectionViewCell`. Esta clase contiene una etiqueta (`label`) que se utiliza para mostrar el texto de los estados en cada celda de la vista de colección. La propiedad `label` está anotada con el atributo `@IBOutlet`, lo que le permite conectarse a una etiqueta en la interfaz de usuario. Esto es crucial para personalizar la apariencia de las celdas en la vista de colección.

En resumen, el código proporcionado crea una vista de colección de iOS que muestra una lista de estados de Estados Unidos y permite a los usuarios buscar estados específicos. La implementación se basa en la configuración de la barra de búsqueda, la gestión de datos y la personalización de las celdas de la vista de colección. Los datos se almacenan en una matriz constante, se filtran según la búsqueda y se presentan de manera eficiente en la vista de colección.

