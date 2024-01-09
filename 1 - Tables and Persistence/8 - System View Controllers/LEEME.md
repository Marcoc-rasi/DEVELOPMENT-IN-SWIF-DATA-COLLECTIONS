# Controladores de Vista del Sistema

Hasta este punto del curso, he estado creando mis propias subclases de `UIViewController` para mostrar información en mis aplicaciones. Pero UIKit incluye varias subclases de `UIViewController` que facilitan la presentación, el acceso y el intercambio de contenido de la aplicación.
En esta lección, aprendí cómo incorporar estos controladores de vista del sistema para mostrar alertas, compartir contenido, enviar mensajes y acceder a la cámara y la biblioteca de fotos en un dispositivo iOS.

## Lo que Aprendí
- Cómo presentar un controlador de actividad.
- Cómo presentar un controlador de vista de Safari.
- Cómo presentar y responder a acciones en un controlador de alerta.
- Cómo acceder y responder a selecciones en un controlador de selección de imágenes.
- Cómo presentar un controlador de vista de composición de correo.

## Vocabulario
- `controlador de actividad`: Controlador de sistema que permite al usuario realizar actividades como compartir contenido.
- `controlador de alerta`: Controlador de sistema que muestra mensajes de alerta o acción al usuario.
- `manejador`: Función que se ejecuta en respuesta a una acción específica.
- `controlador de selección de imágenes`: Controlador de sistema que permite al usuario seleccionar imágenes de la cámara o la biblioteca de fotos.
- `controlador de vista de composición de correo`: Controlador de sistema que permite al usuario redactar y enviar correos electrónicos.
- `controlador de vista del sistema`: Subclases de `UIViewController` proporcionadas por UIKit para funciones específicas, como compartir contenido o mostrar alertas.

#### 8 - Controladores de vista del sistema

##### Muebles del hogar

resumen

El objetivo de este laboratorio es utilizar controladores de vista del sistema en una aplicación que enumera habitaciones y muebles, permitiendo a los usuarios compartir elementos de mobiliario con otras aplicaciones en su dispositivo. Asegúrese de construir y ejecutar la aplicación en un dispositivo iOS físico, en lugar del simulador, para disponer de más aplicaciones que permitan compartir imágenes y texto.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/33b90da3-60cf-44e3-a59b-4701ee8e28d7

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

##### SystemViewControllers-Marcocrasi

resumen

La aplicación integra varias funcionalidades clave para interactuar con el dispositivo y realizar acciones como compartir imágenes, ver sitios web, tomar fotografías y enviar correos electrónicos.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/41e84555-bce7-4d11-90f2-236d68524576

La clase `ViewController` implementa tres protocolos: `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate` y `MFMailComposeViewControllerDelegate`. Estos protocolos son esenciales para interactuar eficazmente con la cámara, el álbum de fotos y el servicio de correo electrónico.

En la acción del botón "shareButtonTapped", se utiliza un "UIActivityViewController" para permitir al usuario compartir una imagen. El controlador de actividad proporciona una interfaz que muestra las aplicaciones disponibles para compartir la imagen, como "Mensajes" o "Correo electrónico".

El botón "safariButtonTapped" inicia un "SFSafariViewController" que permite a los usuarios ver un sitio web, en este caso, el sitio web de Apple. El "SFSafariViewController" es un controlador de vista que proporciona una experiencia de navegación web sin salir de la aplicación.

El botón "cameraButtonTapped" muestra un "UIImagePickerController" en forma de hoja de acción ("UIAlertController"). Este controlador permite al usuario elegir entre dos fuentes de imágenes: "cámara" o "biblioteca de fotos". El código configura el controlador según la elección y presenta la cámara o la interfaz de la biblioteca de fotografías al usuario.

El método "imagePickerController" maneja la selección de imágenes de la cámara o biblioteca de fotos. La imagen seleccionada se muestra en la vista de imágenes ("imageView").

Al tocar el botón "emailButtonTapped", verifica si el dispositivo puede enviar correos electrónicos usando "MFMailComposeViewController". Este controlador de composición de correo electrónico está configurado con dirección, asunto y cuerpo del destinatario predefinidos. Si hay una imagen en "imageView", se adjunta al correo electrónico como archivo adjunto.

El método "mailComposeController" se llama cuando el usuario ha terminado de redactar el correo electrónico y es responsable de descartar el controlador de composición del correo.

En resumen, este código demuestra una implementación de una interfaz de usuario que permite compartir imágenes, abrir sitios web, tomar fotografías o seleccionar imágenes de la biblioteca de fotografías y enviar correos electrónicos directamente desde la aplicación. Los protocolos y controladores específicos de iOS, como "UIActivityViewController", "SFSafariViewController" y "MFMailComposeViewController", son cruciales para proporcionar estas funcionalidades integradas de manera efectiva.

##### Desafío SystemViewControllers-Marcocrasi

resumen

La aplicación  utiliza el marco UIKit para crear una interfaz de usuario con varios botones, cada uno de los cuales realiza diferentes acciones. Estas acciones incluyen compartir una imagen, abrir un sitio web en Safari, tomar una foto con la cámara del dispositivo, enviar un correo electrónico y enviar un mensaje de texto.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f60566fe-3dd3-4385-9ed7-ce064221724d

El código comienza importando dos módulos esenciales: `SafariServices` para abrir Safari dentro de la aplicación y `MessageUI` para enviar correos electrónicos y mensajes de texto.

La clase principal en el código se llama `ViewController`, que hereda de `UIViewController` e implementa varios protocolos, como `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, `MFMailComposeViewControllerDelegate` y `MFMessageComposeViewControllerDelegate`.

Dentro de esta clase, hay una propiedad llamada `imageView`, que está asociada con una vista de imagen en la interfaz de usuario. Esta vista de imagen se utiliza para mostrar imágenes seleccionadas o capturadas.

El método `viewDidLoad` es el método de inicialización de la vista y no realiza ninguna acción adicional en este caso.

Hay varios métodos `@IBAction` que corresponden a los distintos botones de la interfaz de usuario:

- El método `shareButtonTapped` se activa cuando se presiona el botón "Compartir". Comprueba si una imagen está presente en `imageView` y, de ser así, crea un controlador de actividad (`UIActivityViewController`) que permite a los usuarios compartir la imagen a través de varias aplicaciones y servicios.

- El método `safariButtonTapped` abre el navegador Safari dentro de la aplicación y carga la página web de Apple cuando se presiona el botón "Safari".

- Cuando se presiona el botón "Cámara", se llama al método `cameraButtonTapped`. Muestra un controlador de alerta (`UIAlertController`) que permite al usuario seleccionar la fuente de la imagen (cámara o biblioteca de fotos) y luego presenta un controlador de selección de imágenes (`UIImagePickerController`) para tomar fotos o seleccionar imágenes de la biblioteca de fotos.

- La función `imagePickerController(_:didFinishPickingMediaWithInfo:)` se llama cuando se selecciona o toma una imagen con el controlador del selector de imágenes. Actualiza `imageView` con la imagen seleccionada y descarta el controlador del selector de imágenes.

- El método `emailButtonTapped` se activa cuando se presiona el botón "Correo electrónico". Comprueba si es posible enviar correos electrónicos y, de ser así, crea un controlador de correo electrónico (`MFMailComposeViewController`) que permite a los usuarios enviar un correo electrónico predefinido con una imagen adjunta, si está disponible.

- La función `mailComposeController(_:didFinishWith:result:error:)` se llama cuando se completa la redacción del correo electrónico. Cierra el controlador de correo electrónico.

- La función `messageComposeViewController(_:didFinishWith:)` se invoca cuando se completa la composición del mensaje de texto, cerrando el controlador de mensajes de texto.

- Finalmente, el botón "Mensaje" activa el método `messageButtonTapped`, que comprueba si es posible enviar mensajes de texto. Si es así, se crea un controlador de mensajes de texto ("MFMessageComposeViewController") para permitir a los usuarios enviar un mensaje de texto predefinido a destinatarios específicos.

En resumen, este código demuestra cómo utilizar varios controladores y funcionalidades de iOS para realizar acciones como compartir imágenes, abrir enlaces en Safari, tomar fotografías, enviar correos electrónicos y enviar mensajes de texto dentro de una aplicación de iOS. Estas funciones están conectadas a acciones específicas del usuario a través de botones en la interfaz de usuario.

