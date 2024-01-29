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


### `Vista de colección básica`

En esta lección, he aprendido sobre mi primer API que utiliza genéricos: `UICollectionViewDiffableDataSource`. Entendí cómo puede reducir el trabajo necesario para proporcionar datos a una vista de colección, ofreciéndome características estándar, como la animación de cambios, de manera automática.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b68afb0e-04ec-453e-a29c-d6181852cd69


