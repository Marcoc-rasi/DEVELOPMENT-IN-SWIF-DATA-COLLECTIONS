### `Muebles del hogar`

El objetivo de este laboratorio es utilizar controladores de vista del sistema en una aplicación que enumera habitaciones y muebles, permitiendo a los usuarios compartir elementos de mobiliario con otras aplicaciones en su dispositivo. Asegúrese de construir y ejecutar la aplicación en un dispositivo iOS físico, en lugar del simulador, para disponer de más aplicaciones que permitan compartir imágenes y texto.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/3fe377a0-16da-4b83-8b5e-07c0f957ada9

El código consta de tres clases dentro del contexto de una aplicación de iOS escrita en Swift utilizando el marco UIKit: `Room`, `Furniture` y `FurnitureDetailViewController`. Estas clases están diseñadas para modelar y gestionar información sobre habitaciones, muebles y detalles de muebles, lo que permite a los usuarios seleccionar imágenes de muebles y compartir información relevante. A continuación se detallan las funcionalidades y características clave de cada clase.

La clase `Room` representa una habitación y consta de dos propiedades esenciales:

- `"nombre"`: Almacena el nombre de la habitación.
- `"muebles"`: una serie de objetos ``Muebles` que representan la colección de muebles de esa habitación.

El inicializador de la clase permite la creación de instancias de sala con un nombre específico y una lista de muebles asociados. La clase `Room` es parte de la biblioteca estándar de Swift y el módulo `Foundation` se importa para garantizar su disponibilidad.

La clase "Muebles" modela un mueble individual y comprende tres atributos clave:

- `"nombre"`: Contiene el nombre del mueble.
- `"descripción"`: Almacena una descripción detallada del mueble.
- `"imageData"` (opcional): Representa datos de imagen binaria asociados con el mueble. Esta propiedad es opcional, es decir que puede ser nula, brindando flexibilidad a la hora de modelar diferentes muebles, algunos con imágenes asociadas y otros sin ellas.

El inicializador personalizado para la clase "Muebles" permite la creación de instancias de muebles con nombre y descripción obligatorios y, opcionalmente, datos de imagen. Esto proporciona flexibilidad a la hora de modelar diferentes muebles, algunos con imágenes y otros sin ellas.

La clase `FurnitureTableViewController` es un controlador de vista de tabla responsable de mostrar información sobre las habitaciones y sus muebles en una interfaz de usuario. Algunas características clave de esta clase incluyen:

- La definición de una estructura interna denominada `"PropertyKeys"` que almacena un identificador de celda de vista de tabla para su uso posterior.
- La propiedad `"rooms"` que almacena una lista de instancias de `Room`, cada una de las cuales representa una habitación con su nombre y muebles asociados.
- La implementación de métodos del protocolo `UITableViewDataSource` para proporcionar datos a la vista de tabla, incluido el número de secciones, el número de filas en cada sección y la configuración de las celdas de la tabla.
- Un método `showFurnitureDetail` que maneja la visualización de detalles de muebles cuando se selecciona una celda.

Finalmente, la clase `FurnitureDetailViewController` representa la vista detallada de un mueble dentro de la aplicación. Esta clase ofrece las siguientes funcionalidades clave:

- Permite al usuario elegir una foto para el mueble, implicando el uso de un `UIImagePickerController` y la presentación de opciones para tomar una foto con la cámara o seleccionar una imagen de la biblioteca de fotos del dispositivo.
- Proporciona la posibilidad de compartir información sobre los muebles, incluido su nombre, descripción y foto, a través de una interfaz de actividad ("UIActivityViewController").

En resumen, estas clases trabajan juntas para crear una aplicación que permite a los usuarios ver información detallada sobre las habitaciones y sus muebles, seleccionar imágenes para muebles específicos y compartir detalles de los muebles con otras aplicaciones. La modularidad y flexibilidad en la representación de muebles y habitaciones facilitan la gestión de datos en la aplicación.
