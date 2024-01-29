### `SystemViewControllers-Marcocrasi`

La aplicación integra varias funcionalidades clave para interactuar con el dispositivo y realizar acciones como compartir imágenes, ver sitios web, tomar fotografías y enviar correos electrónicos.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/22e63245-ff2b-467e-be8b-28826580b796

La clase `ViewController` implementa tres protocolos: `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate` y `MFMailComposeViewControllerDelegate`. Estos protocolos son esenciales para interactuar eficazmente con la cámara, el álbum de fotos y el servicio de correo electrónico.

En la acción del botón "shareButtonTapped", se utiliza un "UIActivityViewController" para permitir al usuario compartir una imagen. El controlador de actividad proporciona una interfaz que muestra las aplicaciones disponibles para compartir la imagen, como "Mensajes" o "Correo electrónico".

El botón "safariButtonTapped" inicia un "SFSafariViewController" que permite a los usuarios ver un sitio web, en este caso, el sitio web de Apple. El "SFSafariViewController" es un controlador de vista que proporciona una experiencia de navegación web sin salir de la aplicación.

El botón "cameraButtonTapped" muestra un "UIImagePickerController" en forma de hoja de acción ("UIAlertController"). Este controlador permite al usuario elegir entre dos fuentes de imágenes: "cámara" o "biblioteca de fotos". El código configura el controlador según la elección y presenta la cámara o la interfaz de la biblioteca de fotografías al usuario.

El método "imagePickerController" maneja la selección de imágenes de la cámara o biblioteca de fotos. La imagen seleccionada se muestra en la vista de imágenes ("imageView").

Al tocar el botón "emailButtonTapped", verifica si el dispositivo puede enviar correos electrónicos usando "MFMailComposeViewController". Este controlador de composición de correo electrónico está configurado con dirección, asunto y cuerpo del destinatario predefinidos. Si hay una imagen en "imageView", se adjunta al correo electrónico como archivo adjunto.

El método "mailComposeController" se llama cuando el usuario ha terminado de redactar el correo electrónico y es responsable de descartar el controlador de composición del correo.

En resumen, este código demuestra una implementación de una interfaz de usuario que permite compartir imágenes, abrir sitios web, tomar fotografías o seleccionar imágenes de la biblioteca de fotografías y enviar correos electrónicos directamente desde la aplicación. Los protocolos y controladores específicos de iOS, como "UIActivityViewController", "SFSafariViewController" y "MFMailComposeViewController", son cruciales para proporcionar estas funcionalidades integradas de manera efectiva.
