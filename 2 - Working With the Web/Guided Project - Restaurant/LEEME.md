# Guided Project: Restaurant

En esta unidad, adquirí nuevas herramientas en Swift y aprendí a enviar y recuperar información mediante una API de servicios web. En el proyecto guiado, puse a prueba mis conocimientos al diseñar un menú interactivo para un restaurante que permite al cliente ver una lista de opciones, agregar elementos a un pedido y enviar el pedido al restaurante. Utilizando un servidor que ejecutaré en mi propia computadora, tuve la oportunidad de modificar las opciones, descripciones e imágenes que devuelve la API.

## Detalles del Servidor y Configuración del Proyecto
Antes de pensar en el flujo de trabajo de la aplicación de menú, es importante comprender cómo trabajar con el servidor. Al entender el funcionamiento de la API y el servidor, pude idear una lista de características para el proyecto. No era necesario realizar modificaciones en los datos del servidor, pero sí necesitaba ejecutar el servidor en mi Mac.
Tomé un tiempo para configurar el servidor y entender los detalles.

### Ejecutar el Servidor
La carpeta del proyecto incluye el archivo binario del servidor, OpenRestaurant.app. Hice clic derecho en OpenRestaurant y seleccioné "Abrir" en el menú desplegable. Dependiendo de la configuración de seguridad de mi Mac, podría aparecer un cuadro de diálogo de advertencia. Hice clic en "Abrir" para indicar que confío en la aplicación.

![SERVER_1](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5c1f546d-c115-4c95-9c20-384e8f463c03)

Para iniciar y detener el servidor, hice clic en el botón en la esquina inferior derecha de la ventana de OpenRestaurant. Si realizaba cambios en los archivos de recursos del servidor, necesitaba detener y reiniciar el servidor.

![SERVER_2](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8b38f700-1f62-471e-9b16-dbf57790d68a)

El servidor me permitió ver categorías y elementos del menú, editar categorías y elementos, y abrir la carpeta de imágenes. Al hacer clic en "Editar Categorías" o "Editar Elementos del Menú", se abría categories.json o menu.json, respectivamente. Estos archivos contienen los datos que devuelve el servidor. Si quería cambiar el menú, necesitaba editar uno o ambos archivos.
Al hacer clic en "Abrir Carpeta de Imágenes", accedía a un directorio que contenía imágenes ficticias para los elementos del menú. Si quería poner mis propias imágenes de alimentos en este directorio, aseguraba usar imágenes PNG. La imagen de un elemento del menú siempre lleva el nombre de su ID.
Inicié el servidor con el botón en la esquina inferior derecha. Para verificar que el servidor funcionara correctamente, abrí mi navegador y cargué la URL http://localhost:8080. El navegador debería mostrar texto en pantalla que indique el estado del servidor. Si recibía un error, la causa más común era una edición incorrecta de menu.json, lo que impedía que la lista del menú se creara correctamente. Necesitaba verificar que los datos JSON fueran válidos, cerrar la ventana de la aplicación y reiniciar el servidor. Podía usar el botón "Restablecer Datos" para descartar mis datos personalizados y restaurar los archivos originales.
Dependiendo de la configuración de mi Mac, podía ver una solicitud para permitir conexiones entrantes al servidor. Hacía clic en "Permitir".

![SERVER_3](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/6783db5b-4e9e-4e97-989c-458625c8a58d)

### Estructura JSON
Abrí menu.json desde la ventana de OpenRestaurant, luego abrí http://localhost:8080/menu en mi navegador para ver los datos del menú que devolverá la API. En el nivel raíz del JSON hay una matriz de diccionarios, donde cada diccionario representa un elemento del menú. Si observaba detenidamente los datos del servidor en comparación con menu.json, notaba que el JSON no coincidía exactamente. No me preocupaba la discrepancia; el servidor realiza algunos ajustes en la estructura de los datos cuando recibe una solicitud.
En cada diccionario del JSON devuelto por el servidor, encontraba las siguientes claves:
- `id` es un Int único que distingue un elemento de otro. Si añadía o modificaba un diccionario, aseguraba que cada valor de `id` fuera único.
- `name` es un String que indica el nombre del elemento del menú. El servidor no requiere que los nombres sean únicos, pero no tendría sentido tener dos elementos con el mismo nombre en un menú, así que mantenía los nombres únicos.
- `description` es un String que proporciona más detalles sobre el elemento del menú.
- `price` es un Double que expresa el precio del elemento del menú. En los datos de muestra, los valores están en dólares estadounidenses. Sin embargo, los valores de precio no están vinculados a una moneda específica, así que podía ajustarlos a cualquier divisa que deseara.
- `category` es un String que proporciona una forma de dividir los elementos, como en un menú real. En los datos de muestra, las categorías son "aperitivos", "ensaladas", "sopas", "platos principales", "postres" y "sándwiches". Si quería crear un nuevo elemento del menú, asignaba la clave de categoría correspondiente. Si deseaba crear una nueva categoría, como "acompañamientos", la agregaba a category.json.
- `image_url` se crea automáticamente por el servidor y tiene la URL base del servidor seguida de la ruta de imágenes y luego el nombre de la imagen. El nombre de la imagen también se crea automáticamente por el servidor y es el id del elemento seguido de la extensión del archivo .png. Si deseaba agregar mi propia imagen, aseguraba que el nombre correspondiera al id del elemento y que su extensión también fuera .png.
Al modificar menu.json, solo debía usar las claves `id`, `name`, `description`, `price`, `category` y `estimated_prep_time`. La última clave no aparece en el JSON devuelto por el servidor para los elementos del menú, pero el servidor la utiliza para proporcionar una estimación de cuánto tiempo llevará cumplir un pedido. El servidor está configurado para usar estas claves (y solo estas claves). Si añadía otras claves a un diccionario, el servidor las ignoraría.

### Puntos finales del servidor
La API en este proyecto tiene varias URL para implementar las funciones de la aplicación. Cada URL comienza con http://localhost:8080 y puede combinarse con los siguientes puntos finales:
- `/categories`: Una solicitud GET a este punto final devolverá una matriz de cadenas que representan las categorías en menu.json. La matriz estará disponible bajo la clave `categories` en el JSON.
- `/menu`: Una solicitud GET a este punto final devolverá la matriz completa de elementos del menú. También puede combinarse con el parámetro de consulta `category` para devolver un subconjunto de elementos. La matriz estará disponible bajo la clave `items` en el JSON.
- `/images`: Combinado con el nombre de la imagen, una solicitud GET a este punto final devolverá los datos de la imagen asociada a un elemento del menú.

- `/order`: Un POST a este punto final con una colección de valores de ID de elementos del menú enviará el pedido y devolverá una respuesta con el tiempo estimado antes de que el pedido esté listo. Los IDs que envíes deben estar contenidos en datos JSON bajo la clave `menuIds`. Al analizar el JSON, el tiempo estimado antes de que el pedido esté listo estará bajo la clave `preparation_time`.


##### Aplicación de pedido

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a3f1fae6-9202-4bbb-9f21-0120330334af

El código proporcionado consta de varias partes que conforman una aplicación iOS para gestionar el menú de un restaurante. La aplicación permite a los usuarios ver las categorías disponibles, seleccionar una categoría para explorar los elementos del menú y realizar pedidos.

En primer lugar, se definen las estructuras de datos esenciales para representar el menú y los pedidos. La estructura "MenuItem" contiene detalles sobre un elemento del menú, como su nombre, precio y URL de la imagen. El protocolo `Codable` se utiliza para facilitar la conversión entre objetos Swift y representaciones JSON. La estructura `MenuResponse` es responsable de deserializar la respuesta del menú JSON, mientras que `Order` realiza un seguimiento de los elementos seleccionados por el usuario en su orden.

El controlador principal de la aplicación, `MenuController`, centraliza las operaciones relacionadas con el menú. Incluye varios métodos asincrónicos para realizar diversas tareas:

- `fetchCategories()`: recupera las categorías disponibles del servidor y las devuelve como una matriz de cadenas. `URLSession` se utiliza para solicitudes de red y `JSONDecoder` para deserialización.

- `fetchMenuItems(forCategory CategoryName)`: recupera elementos de menú para una categoría específica y los devuelve como una matriz de objetos `MenuItem`. Similar al método anterior, utiliza `URLSession` y `JSONDecoder` para la comunicación y la deserialización.

- `submitOrder(forMenuIDs menuIDs)`: envía un pedido al servidor con una lista de ID de elementos de menú seleccionados y devuelve el tiempo estimado necesario para preparar el pedido. Esto implica construir una solicitud HTTP POST con "URLRequest" y usar "JSONEncoder" para serializar los datos del pedido.

- `fetchImage(from url)`: recupera una imagen de una URL determinada y la devuelve como un objeto `UIImage`. `URLSession` se utiliza para descargar la imagen y se verifica el estado de la respuesta HTTP.

El controlador también define `orderUpdatedNotification` para informar a otras partes de la aplicación sobre los cambios en el orden del menú. La instancia compartida de `MenuController` (“shared”) se utiliza en toda la aplicación para acceder a las funcionalidades del controlador.

La aplicación consta de múltiples vistas. La clase `CategoryTableViewController` es responsable de mostrar las categorías disponibles en una vista de tabla. Cuando se carga la vista, realiza una operación asincrónica para obtener las categorías usando `MenuController.shared.fetchCategories()`. Los resultados se reflejan en la interfaz de usuario llamando al método "updateUI (con categorías)".

Cuando el usuario selecciona una categoría, se inicia una transición a la vista de tabla de elementos del menú correspondiente, "MenuTableViewController". La clase `CategoryTableViewController` también define los métodos de vista de tabla estándar para configurar la estructura y el comportamiento de la tabla, incluida la configuración de celdas.

La clase `MenuItemCell` personaliza la apariencia de las celdas de elementos de menú en las vistas de tabla. Utiliza propiedades observadas para detectar cambios en los datos y el método `updateConfiguration(using state: UICellConfigurationState)` para actualizar visualmente las celdas con nombre, precio y, opcionalmente, una imagen.

Finalmente, la clase `OrderConfirmationViewController` muestra una confirmación del pedido con el tiempo estimado de preparación.

En resumen, el código presenta una aplicación de iOS que utiliza programación asincrónica y estructuras de datos "codificables" para gestionar el menú de un restaurante. El controlador principal, "MenuController", coordina la recuperación de datos, la realización de pedidos y la recuperación de imágenes. Cada vista es responsable de mostrar información específica, como categorías, elementos de menú y confirmaciones de pedidos, con personalización detallada de la apariencia de las celdas a través de "MenuItemCell".


## Project Extension

### Restauración del Estado
Considera el siguiente escenario. Un usuario inicia un pedido agregando uno o dos elementos al menú. Luego, se ve interrumpido por una notificación de iMessage que resulta en 15 minutos de mensajes de texto, correos electrónicos y navegación web. Cuando el usuario vuelve a tu aplicación, esta se ha cerrado. En lugar de continuar desde donde lo dejaron, tienen que crear el pedido desde cero, lo cual no es una buena experiencia. Además, su estado de exploración del menú se ha restablecido a la lista de categorías, otra molestia si la jerarquía del menú es profunda y hay muchos elementos. (Probablemente hayas notado estas deficiencias mientras desarrollabas la aplicación).
Al implementar la restauración del estado, puedes asegurarte de que el usuario no perciba ninguna interrupción en su actividad. Esto también es crucial para las aplicaciones de iPad que admiten varias ventanas para proporcionar una buena experiencia de usuario.

A partir de iOS 13, la restauración del estado la maneja tu UIWindowSceneDelegate y se logra mediante la clase NSUserActivity. NSUserActivity es un objeto liviano que habilita muchas funciones diferentes en las plataformas de Apple, incluida la restauración del estado, Handoff, la indexación de búsqueda Spotlight y SiriKit. Puedes crear instancias de NSUserActivity en momentos clave y proporcionar la información contextual necesaria para realizar estas tareas.
En esta extensión del proyecto guiado, agregarás la restauración del estado a OrderApp. Para esta aplicación, mantendrás una instancia de NSUserActivity en MenuController que contenga el pedido actual, así como los elementos necesarios para volver a crear los controladores de vista en tu aplicación en los que el usuario podría haber dejado de trabajar.

Así es como funciona. Mientras el usuario está usando tu aplicación, seguirás la pista de información clave en el diccionario userInfo de una instancia de NSUserActivity. Cuando tu escena se envía al segundo plano, iOS solicitará una instancia de NSUserActivity que se utilizará la próxima vez que se conecte la escena. Cuando la escena se reconecta, se te proporcionará la misma instancia de NSUserActivity, que puedes utilizar para reconstruir el estado de la aplicación para que el usuario pueda continuar con lo que estaba haciendo.

##### Extensión OrderApp - Restauración del estado

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/ac873bab-5576-48a7-ae96-808a1099f464

El código proporcionado se centra en una aplicación de iOS para gestionar el menú de un restaurante y realizar pedidos. La estructura general del código abarca varias áreas clave, todas controladas por la clase `MenuController`. Esta clase sirve como controlador central de la aplicación, coordinando la recuperación de datos, las actualizaciones de la interfaz de usuario y la gestión de pedidos. Aquí están las partes clave del código:

Primero, se definen varias estructuras de datos para representar elementos fundamentales de la aplicación:
- La estructura "MenuItem" modela un elemento de menú e incluye propiedades como un identificador único, nombre, descripción, precio, categoría y una URL de imagen. Utiliza el protocolo "Codable" para codificar y decodificar datos, lo que permite una fácil serialización y deserialización de objetos "MenuItem".
- La estructura `MenuResponse` representa una respuesta que contiene una matriz de elementos `MenuItem`. Esto es útil para decodificar la respuesta JSON del menú del restaurante.
- La estructura `CategoriesResponse` es responsable de decodificar la respuesta JSON que contiene las categorías de menú disponibles.
- La estructura `OrderResponse` se utiliza para decodificar la respuesta de un pedido, incluido el tiempo estimado de preparación. Utiliza mapeo de claves a través de "CodingKeys" para hacer coincidir los nombres de propiedades en los datos JSON.

La clase `MenuController` juega un papel crucial en la lógica de la aplicación. Algunos aspectos clave incluyen:
- Manejo de errores: la clase define una enumeración `MenuControllerError` que encapsula posibles errores y proporciona mensajes de error localizados.
- Notificación de actualización del pedido: cuando se actualiza el pedido, se envía una "orderUpdatedNotification" para informar a otras partes de la aplicación.
- Gestión de la actividad del usuario: se utiliza una instancia de `NSUserActivity` para rastrear el estado de la aplicación, incluida la categoría actual, el elemento del menú y el orden actual. Esto permite la restauración del estado.

La clase `MenuController` también ofrece un conjunto de métodos asincrónicos para interactuar con el servidor:
- `fetchCategories()`: recupera las categorías de menú disponibles mediante una solicitud HTTP y decodifica la respuesta en una serie de cadenas.
- `fetchMenuItems(forCategory CategoryName)`: recupera elementos del menú para una categoría específica. Esto implica construir la URL y decodificar la respuesta JSON.
- `submitOrder(forMenuIDs menuIDs)`: envía un pedido con una lista de identificadores de elementos del menú y recibe el tiempo de preparación estimado como respuesta. La solicitud se realiza como una operación POST con datos JSON.
- `fetchImage(from url)`: Descarga una imagen de una URL y la convierte en un objeto `UIImage`.

Finalmente, las clases `CategoryTableViewController`, `MenuTableViewController`, `MenuItemDetailViewController` y `OrderTableViewController` son controladores de vista responsables de mostrar la interfaz de usuario y administrar la navegación del usuario dentro de la aplicación. Utilizan métodos asincrónicos para recuperar datos del servidor y actualizar la interfaz de usuario según categorías, elementos de menú y pedidos.

En conjunto, este código proporciona una base sólida para una aplicación de restaurante que permite a los usuarios navegar por el menú, realizar pedidos y realizar un seguimiento del estado de sus pedidos. La separación de responsabilidades entre clases y el manejo de errores hace que la aplicación sea robusta y fácil de mantener.



## Resumen
Adquirí conocimientos fundamentales sobre los conceptos clave de las aplicaciones modernas.
Exploré temas complejos en esta unidad. En primer lugar, comprendí los cierres y su función para transmitir código entre objetos, creando bloques ejecutables más adelante. Posteriormente, apliqué los cierres para desarrollar animaciones. Por último, aprendí a realizar solicitudes de red para obtener información de la web y enviar datos de vuelta.
Con la capacidad de trabajar con APIs públicas, mis aplicaciones ya no se limitan a la información que los usuarios agregan. Ahora tengo acceso a toda la red mundial.
En la siguiente unidad, exploré las vistas de colección, herramientas esenciales en iOS que permiten mostrar extensas colecciones de información con una variedad casi infinita. Reforcé mis habilidades existentes y descubrí patrones comunes que harán que la exploración futura en UIKit sea más familiar.
