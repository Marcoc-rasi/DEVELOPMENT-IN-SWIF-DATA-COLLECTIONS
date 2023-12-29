# Guided Project: Restaurant

En esta unidad, adquirí nuevas herramientas en Swift y aprendí a enviar y recuperar información mediante una API de servicios web. En el proyecto guiado, puse a prueba mis conocimientos al diseñar un menú interactivo para un restaurante que permite al cliente ver una lista de opciones, agregar elementos a un pedido y enviar el pedido al restaurante. Utilizando un servidor que ejecutaré en mi propia computadora, tuve la oportunidad de modificar las opciones, descripciones e imágenes que devuelve la API.

## Detalles del Servidor y Configuración del Proyecto
Antes de pensar en el flujo de trabajo de la aplicación de menú, es importante comprender cómo trabajar con el servidor. Al entender el funcionamiento de la API y el servidor, pude idear una lista de características para el proyecto. No era necesario realizar modificaciones en los datos del servidor, pero sí necesitaba ejecutar el servidor en mi Mac.
Tomé un tiempo para configurar el servidor y entender los detalles.

### Ejecutar el Servidor
La carpeta del proyecto incluye el archivo binario del servidor, OpenRestaurant.app. Hice clic derecho en OpenRestaurant y seleccioné "Abrir" en el menú desplegable. Dependiendo de la configuración de seguridad de mi Mac, podría aparecer un cuadro de diálogo de advertencia. Hice clic en "Abrir" para indicar que confío en la aplicación.

Para iniciar y detener el servidor, hice clic en el botón en la esquina inferior derecha de la ventana de OpenRestaurant. Si realizaba cambios en los archivos de recursos del servidor, necesitaba detener y reiniciar el servidor.

El servidor me permitió ver categorías y elementos del menú, editar categorías y elementos, y abrir la carpeta de imágenes. Al hacer clic en "Editar Categorías" o "Editar Elementos del Menú", se abría categories.json o menu.json, respectivamente. Estos archivos contienen los datos que devuelve el servidor. Si quería cambiar el menú, necesitaba editar uno o ambos archivos.
Al hacer clic en "Abrir Carpeta de Imágenes", accedía a un directorio que contenía imágenes ficticias para los elementos del menú. Si quería poner mis propias imágenes de alimentos en este directorio, aseguraba usar imágenes PNG. La imagen de un elemento del menú siempre lleva el nombre de su ID.
Inicié el servidor con el botón en la esquina inferior derecha. Para verificar que el servidor funcionara correctamente, abrí mi navegador y cargué la URL http://localhost:8080. El navegador debería mostrar texto en pantalla que indique el estado del servidor. Si recibía un error, la causa más común era una edición incorrecta de menu.json, lo que impedía que la lista del menú se creara correctamente. Necesitaba verificar que los datos JSON fueran válidos, cerrar la ventana de la aplicación y reiniciar el servidor. Podía usar el botón "Restablecer Datos" para descartar mis datos personalizados y restaurar los archivos originales.
Dependiendo de la configuración de mi Mac, podía ver una solicitud para permitir conexiones entrantes al servidor. Hacía clic en "Permitir".

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


