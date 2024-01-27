# Advanced Compositional Layouts

En esta lección, he aprendido a construir diseños composicionales para vistas de colección que permiten mostrar datos de formas que el diseño de flujo no admite. El enfoque se centra en construir aplicaciones que presenten datos en grupos y secciones distintas. Además, he adquirido habilidades valiosas de refactorización durante la parte práctica del laboratorio de la lección.

## Lo que Aprendí

- Utilice `UICollectionViewCompositionalLayout` para crear diseños complejos, incluidas secciones con diseños distintos
- Describir los tres componentes de un diseño compositivo.
- Utilice `UICollectionLayoutSectionOrthogonalScrollingBehavior` para hacer que las secciones se desplacen ortogonalmente al diseño principal.
- Utilice vistas complementarias para agregar encabezados y otros elementos a las secciones de diseño

## Vocabulario
- `anclaje` (anchor): Punto de referencia utilizado para posicionar elementos dentro de un diseño composicional.
- `entorno de diseño` (layout environment): El contexto en el que se está creando el diseño, que incluye información sobre el tamaño y otros atributos del entorno.
- `comentario MARK` (MARK comment): Un comentario especial utilizado para dividir y organizar el código fuente.
- `ortogonal` (orthogonal): Relacionado con líneas o secciones perpendiculares entre sí en un diseño, en este contexto, se refiere a secciones con desplazamiento perpendicular.

##### Búsqueda de iTunes

En esta actualización de la solución del Laboratorio de Búsqueda en iTunes (Parte 4), he añadido un nuevo alcance de búsqueda que abarca los cuatro alcances existentes (Películas, Música, Aplicaciones y Libros). Los resultados se han agrupado en secciones para una separación clara.


https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/2124db42-8144-4aa0-a9ea-0237a9e1212c

El código proporcionado hace referencia a un conjunto de clases y estructuras en una aplicación de iOS que se utiliza para mostrar elementos de la tienda tanto en una vista de tabla como en una vista de colección. Estas clases y estructuras trabajan juntas para permitir la búsqueda y visualización de artículos de la tienda según varias categorías de búsqueda. A continuación se muestra una explicación técnica de cómo funciona este código y cómo se interconectan las diferentes partes:

El punto de entrada de la aplicación es un controlador de vista llamado "StoreItemContainerViewController". Este controlador de vista contiene una barra de búsqueda que permite a los usuarios buscar artículos en la tienda. También contiene dos contenedores, uno para una vista de tabla y otro para una vista de colección, que se utilizan para mostrar los resultados de la búsqueda.

El código comienza definiendo una enumeración llamada "SearchScope". Esta enumeración representa los diferentes ámbitos de búsqueda disponibles en la aplicación, como "Películas", "Música", "Aplicaciones" y "Libros". Cada alcance tiene un título descriptivo y un tipo de medio asociado. Esta información se utiliza para filtrar los resultados de la búsqueda.

A continuación, se definen las estructuras `StoreItem` y `SearchResponse`. La estructura "StoreItem" representa un artículo de la tienda e incluye información como el nombre, artista, tipo, descripción y URL de la imagen. Cumplir con el protocolo "Codable" facilita la codificación y decodificación de estos elementos hacia y desde JSON. La estructura `SearchResponse` se utiliza para representar respuestas de búsqueda y contiene una variedad de elementos de la tienda.

En el código, hay dos tipos de celdas personalizadas: `ItemTableViewCell` y `ItemCollectionViewCell`. Ambas celdas implementan el protocolo "ItemDisplaying", que define las propiedades necesarias para mostrar los artículos de la tienda, incluida una vista de imagen, una etiqueta de título y una etiqueta de detalle. Las celdas se utilizan para mostrar elementos en la vista de tabla y en la vista de colección.

La implementación del protocolo `ItemDisplaying` se encuentra en una extensión que proporciona un método llamado `configure(for:storeItemController:)`. Este método es responsable de configurar la celda con datos de un artículo de la tienda y maneja la carga de la imagen del artículo usando un controlador llamado `StoreItemController`. En caso de error al cargar la imagen, se manejan las excepciones apropiadas.

La clase `StoreItemController` es responsable de realizar solicitudes de búsqueda y descargar imágenes desde las URL de los elementos de la tienda. Contiene métodos asincrónicos para buscar artículos de la tienda y cargar imágenes desde URL. Además, define una enumeración llamada `StoreItemError` que representa posibles errores relacionados con la búsqueda y carga de imágenes.

El `StoreItemContainerViewController` es el punto central de la aplicación y es responsable de coordinar la búsqueda y visualización de los artículos de la tienda. Utiliza un controlador de búsqueda (`UISearchController`) para permitir a los usuarios buscar elementos. Al cambiar el alcance de la búsqueda, cambia entre la vista de tabla y la vista de colección para mostrar los resultados correspondientes.

En resumen, este código proporciona una infraestructura completa para buscar y mostrar artículos de la tienda en una aplicación de iOS. Emplea un diseño modular con celdas personalizadas y un controlador central para coordinar la búsqueda y visualización de artículos. Se utilizan estructuras y enumeraciones para representar datos y configuraciones cruciales, y se aprovecha la concurrencia asincrónica para mejorar la capacidad de respuesta de la aplicación durante la búsqueda y la carga de imágenes.

##### Diseño de tienda de aplicaciones

En esta lección, he construido una réplica de la página principal de la App Store de iOS utilizando una única vista de colección y un diseño composicional con secciones distintas. El enfoque de esta lección se centra en la creación del diseño composicional y en reforzar mi conocimiento sobre `UICollectionViewDiffableDataSource`.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/ac8b5e34-d34b-477d-a3a9-22c653da83c8

El código se compone de múltiples clases y estructuras en el lenguaje de programación Swift y utiliza el marco UIKit de iOS para crear una interfaz de usuario. El objetivo principal del código es definir la apariencia y el comportamiento de una vista de colección que muestra una lista de aplicaciones y categorías de una tienda de aplicaciones.

- **`App` y `StoreCategory`**: Estas dos estructuras definen los modelos de datos para aplicaciones y categorías de tiendas. Cada instancia de "Aplicación" contiene información sobre una aplicación, como título, subtítulo, precio y un posible título promocional. Las aplicaciones también tienen un color aleatorio para su representación visual. Por otro lado, las categorías están representadas por un nombre y un color aleatorio.

- **`Item`**: la enumeración `Item` se utiliza para representar aplicaciones y categorías. Esta estructura permite almacenar objetos de tipo `App` o `StoreCategory`. También proporciona métodos para acceder a datos específicos de una aplicación o categoría, según corresponda.

- **`PromotedAppCollectionViewCell` y `StandardAppCollectionViewCell`**: estas clases definen celdas personalizadas para la vista de colección que muestra aplicaciones. Las celdas `PromotedAppCollectionViewCell` están diseñadas para resaltar aplicaciones promocionadas, con encabezados, títulos, subtítulos e imágenes de aplicaciones. Las celdas `StandardAppCollectionViewCell` presentan aplicaciones estándar con títulos, subtítulos e imágenes. Además, estas celdas pueden mostrar una línea inferior para separar las celdas en la vista de colección.

- **`CategoryCollectionViewCell`**: esta clase define una celda personalizada para mostrar categorías en la vista de colección. Cada celda contiene una imagen de categoría representativa, un título y un posible resultado final. Las imágenes y títulos de categorías se configuran en función de la categoría correspondiente.

- **`SectionHeaderView` y `LineView`**: estas clases representan vistas de encabezado y líneas horizontales utilizadas en la vista de colección. `SectionHeaderView` muestra un título y un botón "Ver todo" en un diseño horizontal. `LineView` muestra líneas grises horizontales que se utilizan para separar secciones en la vista de colección.

- **`ViewController`**: La clase `ViewController` es el controlador de vista principal que administra la vista de colección y sus datos. En `ViewController`, se configura la vista de colección y se registran celdas, encabezados y líneas personalizados. Además, se define el diseño de la vista de colección, cómo se organizan las secciones y cómo se muestran los datos. El controlador de datos de la vista de recopilación está configurado para proporcionar y actualizar datos a medida que se desplaza por la vista de recopilación.

En general, el código se centra en crear una vista de colección altamente personalizada que muestra aplicaciones y categorías de una tienda de aplicaciones. Cada componente de la interfaz de usuario se adapta a su función específica y se utilizan celdas y encabezados/vistas personalizados para lograr la presentación deseada. Las estructuras `App` y `StoreCategory` se utilizan para almacenar datos de aplicaciones y categorías, y la enumeración `Item` proporciona una forma unificada de representar estos datos en la vista de colección.
