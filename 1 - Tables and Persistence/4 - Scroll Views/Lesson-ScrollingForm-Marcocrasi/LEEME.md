### `Formulario de desplazamiento-Marcocrasi`

El propósito de este código es garantizar que, cuando el teclado aparece o desaparece dentro de la aplicación, la vista se ajusta automáticamente para mantener los campos de entrada de texto visibles y accesibles.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/dcf8e41e-0e44-4111-af4d-e707a37ba1ef

Dentro de la clase `ViewController`, se declara una propiedad llamada `scrollView`, que representa un objeto `UIScrollView`. Este objeto se utiliza para crear una vista desplazable en la interfaz de usuario.

El método `viewDidLoad()` se ejecuta cuando se carga la vista. Aquí se realiza la configuración de la vista inicial, incluido el registro de notificaciones relacionadas con el teclado llamando a `registerForKeyboardNotifications()`.

El método `registerForKeyboardNotifications()` se encarga de registrar dos notificaciones del sistema: una que se activa cuando se muestra el teclado y otra cuando está oculto. Estas notificaciones son cruciales para responder a eventos relacionados con el teclado.

Cuando se muestra el teclado, se llama al método `keyboardWasShown(_:)`. En este método, se obtiene información sobre el teclado, como su tamaño, y esta información se utiliza para ajustar el contenido de `scrollView`. Las propiedades `contentInset` y `scrollIndicatorInsets` de `scrollView` se modifican para garantizar que los campos de entrada de texto permanezcan visibles.

Cuando el teclado está a punto de ocultarse, se llama al método `keyboardWillBeHidden(_)`. En este caso, las propiedades `contentInset` y `scrollIndicatorInsets` de `scrollView` se restablecen a su estado original, asegurando que la vista vuelva a su posición normal.

En resumen, este código es esencial para garantizar una experiencia de usuario perfecta en una aplicación de iOS. Cuando se muestra el teclado, la vista se ajusta automáticamente para evitar que el teclado cubra elementos de la interfaz de usuario. Cuando el teclado está oculto, la vista vuelve a su estado original. Este enfoque mejora la usabilidad al permitir a los usuarios interactuar con los campos de entrada de texto cómodamente, sin obstrucciones del teclado. El uso de notificaciones del sistema y la manipulación de `scrollView` son claves para lograr este comportamiento.
