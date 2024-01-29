### `Desafío SystemViewControllers-Marcocrasi`

La aplicación  utiliza el marco UIKit para crear una interfaz de usuario con varios botones, cada uno de los cuales realiza diferentes acciones. Estas acciones incluyen compartir una imagen, abrir un sitio web en Safari, tomar una foto con la cámara del dispositivo, enviar un correo electrónico y enviar un mensaje de texto.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/71b41eda-abdf-44f3-9486-dd056cedea53

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
