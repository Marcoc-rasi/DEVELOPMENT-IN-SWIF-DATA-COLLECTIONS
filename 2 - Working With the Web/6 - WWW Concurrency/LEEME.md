# Trabajando con la Web: Concurrencia

En la lección anterior, aprendí cómo decodificar JSON en tipos Swift nativos y objetos de modelo personalizados, cómo escribir mi propio controlador de finalización para manejar código asíncrono y un poco sobre cómo podría abordar la adición de código a un proyecto Xcode.
En esta lección, tomé los datos que recibí de una solicitud de red, los decodifiqué y los mostré en mi propia aplicación. También descargué y configuré mi primera imagen para mostrarla. Para lograr todo esto, aprendí sobre el sistema de concurrencia en iOS y cómo asegurarme de que el código que actualiza la interfaz de usuario se ejecute en el lugar correcto.

## Lo que Aprendí
- Cómo agregar código de red a un proyecto Xcode.
- Los conceptos básicos de cómo el procesador ejecuta código en diferentes colas.
- Cómo enviar código que actualiza la interfaz de usuario para que se ejecute en la cola principal.
- Cómo funciona el sistema de almacenamiento en caché de URL compartida para guardar las respuestas de solicitudes de red repetidas.

## Vocabulario
- `App Transport Security (ATS)`: Sistema de seguridad que protege las comunicaciones de red en una aplicación iOS.
- `cola de fondo`: Cola en la que se ejecutan tareas en segundo plano.
- `concurrencia`: Ejecución simultánea de varias tareas.
- `DispatchQueue`: Clase que gestiona la ejecución de tareas en un hilo específico.
- `Grand Central Dispatch (GCD)`: Sistema de programación en paralelo en iOS y macOS.
- `cola principal`: Cola en la que se ejecuta el código relacionado con la interfaz de usuario.
- `indicador de actividad de red`: Representación visual del estado de la actividad de red en una aplicación.

#### 6 - Concurrencia WWW

##### Búsqueda de iTunes

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/922b230d-9343-46b5-9209-46848229f868

La arquitectura del código comprende una aplicación iOS diseñada para interactuar con la API de iTunes, obteniendo así datos relacionados con las categorías que ofrece esta plataforma. En el núcleo de esta aplicación, la clase `StoreItemController` está definida para gestionar la comunicación con los servicios web de iTunes para buscar artículos de la tienda y cargar imágenes asociadas con estos artículos.

Dos métodos clave en esta clase son `fetchItems(matching query:)` y `fetchImage(from url:)`. El primero se utiliza para realizar búsquedas en la tienda online estableciendo comunicación con la API de iTunes mediante solicitudes HTTP. El último método, "fetchImage", se emplea para cargar imágenes desde las URL proporcionadas por la API de iTunes. Ambos métodos están diseñados para manejar errores específicos mediante una enumeración llamada "StoreItemError". Los tipos de errores que se pueden gestionar incluyen la ausencia de elementos encontrados y datos de imágenes faltantes. Este enfoque de manejo de errores proporciona un control preciso sobre posibles problemas que pueden surgir durante la interacción con los servicios web de iTunes.

La estructura "StoreItem" representa elementos de la tienda individuales relacionados con las categorías de iTunes. Esta estructura se ajusta al protocolo "Codable", lo que permite codificarla y decodificarla hacia y desde el formato JSON. La estructura incluye propiedades como nombre, artista, tipo, descripción y la URL de la imagen del elemento. Su flexibilidad es evidente en su capacidad para adaptarse a varios formatos de datos proporcionados por la API de iTunes.

Para gestionar la codificación y decodificación de objetos `StoreItem` desde JSON, se utilizan las enumeraciones `CodingKeys` y `AdditionalKeys`. Estas enumeraciones permiten asignar propiedades Swift a claves específicas presentes en el JSON devuelto por la API de iTunes. El método personalizado `init(from decoder:)` es responsable de decodificar los objetos `StoreItem` de un objeto `Decoder`, asegurando que la información del elemento se extraiga con precisión, incluso cuando la descripción del elemento se encuentra en diferentes ubicaciones dentro del JSON. proporcionada por la API de iTunes. La estructura "StoreItem" sirve como una representación en memoria de los artículos de la tienda y su versatilidad facilita el manejo de varios formatos de datos desde la API de iTunes.

La estructura `SearchResponse` actúa como un contenedor para los resultados de las búsquedas realizadas a través de la API de iTunes. Dentro de él, hay una serie de objetos "StoreItem" que representan los elementos encontrados durante una búsqueda. Esta estructura juega un papel crucial a la hora de deserializar la respuesta JSON obtenida de la API de iTunes y convertir estos datos en objetos Swift que pueden ser manipulados por la aplicación.

La clase `ItemCell` es responsable de personalizar la apariencia y el contenido de las celdas en una vista de tabla. Esta personalización se logra implementando el método `updateConfiguration(using state:)`, que se llama automáticamente para actualizar la configuración de la celda según su estado y los datos que debe mostrar. Las propiedades de celda como "nombre", "artista" y "artworkImage" están configuradas para activar actualizaciones de configuración cada vez que cambian sus valores. Dentro del método `updateConfiguration`, se crea una configuración basada en la configuración predeterminada de la celda. Posteriormente, los valores de texto e imagen de esta configuración se establecen utilizando los datos proporcionados por las propiedades de la celda. Esto permite que la celda muestre de manera eficiente el nombre, el artista y una imagen relacionada con el artículo de la tienda. En caso de que no se proporcione una imagen, se muestra una imagen predeterminada, junto con su símbolo y configuración de tono.

En resumen, el código en cuestión consta de varios componentes destinados a interactuar con la API de iTunes. Estos componentes incluyen un controlador de vista de tabla (`StoreItemListTableViewController`), un controlador de elementos de tienda (`StoreItemController`), estructuras de datos para representar elementos y respuestas de búsqueda (`StoreItem` y `SearchResponse`) y una celda personalizada (`ItemCell`). diseñado para mostrar información relacionada con las categorías de iTunes en una vista de tabla. La modularidad y adaptabilidad de esta arquitectura permiten una interacción efectiva con servicios web, gestión de datos y presentación de artículos de la tienda en una aplicación iOS, ofreciendo una organización flexible y eficiente.

##### Foto espacial

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e2749e6a-cb6a-4145-b3ff-37bf23009413

El código proporcionado consta de tres componentes relacionados: `ViewController`, `PhotoInfoController` y `PhotoInfo`. Estos componentes trabajan juntos para recuperar información y una imagen de una fotografía espacial de la API de la NASA y mostrarla en una aplicación de iOS. Aquí hay una explicación técnica detallada de cómo funcionan estas partes y se relacionan entre sí.

En primer lugar, la clase `PhotoInfoController` es responsable de interactuar con la API de la NASA. Esta clase implementa dos funciones asincrónicas para recuperar información y una imagen de la fotografía espacial. Estas funciones manejan errores y utilizan la anotación "async" para indicar que son asincrónicas y pueden esperar a que se completen las operaciones de red.

La función `fetchPhotoInfo` construye una URL para la solicitud a la API de la NASA. Luego realiza una solicitud HTTP asincrónica usando "URLSession" para recuperar datos JSON que contienen información sobre la foto espacial. Garantiza que la respuesta sea válida comprobando el código de estado HTTP. Procede a decodificar los datos JSON en una instancia de la estructura `PhotoInfo` usando `JSONDecoder`.

La función `fetchImage(from url: URL)` se utiliza para recuperar la imagen asociada con la foto del espacio. Similar a "fetchPhotoInfo", realiza una solicitud HTTP asincrónica para obtener datos de imagen de la URL proporcionada. Una vez más verifica la respuesta y, si es válida, crea una instancia "UIImage" a partir de los datos de la imagen.

La clase `PhotoInfo` es un modelo de datos que se utiliza para representar información sobre una fotografía espacial. Tiene propiedades para almacenar el título, la descripción, la URL de la imagen y la información de derechos de autor de la foto. Se implementa de conformidad con el protocolo "Codable", lo que permite codificarlo y decodificarlo en formatos JSON o plist. Además, se utiliza una enumeración denominada "CodingKeys" para establecer asignaciones personalizadas entre los nombres de propiedades en la estructura y las claves en la API JSON de la NASA.

La clase `ViewController` sirve como controlador de vista principal de la aplicación. En el método `viewDidLoad`, se realiza la configuración inicial de la interfaz de usuario. La propiedad `photoInfoController` se inicializa para interactuar con la API y se inician tareas asincrónicas para recuperar información de la fotografía espacial y su imagen asociada. La anotación `@MainActor` se utiliza para garantizar que las actualizaciones de la interfaz de usuario se realicen en el hilo principal.

En caso de éxito, la información y la imagen de la foto se actualizan en la interfaz de usuario utilizando el método `updateUI(with photoInfo: PhotoInfo)`. Si se produce un error, se llama al método `updateUI(with error: Error)` para manejarlo y mostrar un mensaje de error en la interfaz de usuario.

En resumen, este código, en voz pasiva, permite que la aplicación iOS interactúe con la API de la NASA para obtener información y una imagen de fotografías espaciales, y luego presentar estos datos en la interfaz de usuario. Las clases `PhotoInfoController` y `PhotoInfo` desempeñan un papel fundamental en la obtención y representación de los datos, mientras que la clase `ViewController` coordina la interacción y presenta los resultados en la interfaz de usuario. El código emplea programación asincrónica y manejo de errores para garantizar un funcionamiento fluido y una experiencia de usuario receptiva.
