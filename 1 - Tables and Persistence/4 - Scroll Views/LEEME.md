# Vistas Desplazables

Hasta ahora en este curso, todas mis vistas han ajustado su contenido perfectamente en una sola pantalla. A medida que crecen mis ideas para aplicaciones, no siempre podré afirmar lo mismo. ¿Y si quiero que los usuarios completen un formulario largo, como una página de registro? O tal vez quiero permitirles examinar los detalles de una imagen muy grande. ¿Qué enfoque debería tomar?
En esta lección, aprendí cómo usar un `UIScrollView` para mostrar contenido que es más grande que la pantalla del dispositivo y permitir que el usuario interactúe con él.

## Lo que Aprendí
- Cómo y cuándo usar vistas desplazables.
- Cómo usar vistas desplazables con Auto Layout y vistas de pila.
- Cómo agregar espacio de amortiguación alrededor de mi contenido.

## Vocabulario
- `bounds`: Área rectangular que representa el tamaño y la posición de una vista en relación con su propio sistema de coordenadas.
- `inserción de contenido`: Espacio adicional alrededor del contenido de una vista.
- `vista de contenido`: Área que contiene el contenido real dentro de una vista de desplazamiento.
- `marco`: Área rectangular que representa el tamaño y la posición de una vista en relación con el sistema de coordenadas de su superposición.
- `vista desplazable`: Componente que permite mostrar contenido más grande que la pantalla y permite al usuario desplazarse para ver diferentes partes del contenido.

#### 4 - Vistas de desplazamiento

##### ISpy-Marcocrasi

Resumen

Esta es  una aplicación que muestra una imagen de un gato y permite operaciones de zoom y desplazamiento dentro del área ampliada.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8517974f-8ca4-47b8-bac0-2f8846ce4a5a

Primero, importamos el módulo UIKit, que es crucial para el desarrollo de aplicaciones iOS. Luego, definimos una clase llamada `ViewController`, que actúa como el controlador principal de la vista de la aplicación. La clase hereda de `UIViewController` y se ajusta al protocolo `UIScrollViewDelegate`, lo que indica que estamos habilitando la manipulación de las vistas de desplazamiento.

Dentro de esta clase encontramos dos propiedades esenciales:
- `scrollView`, que está etiquetado con `@IBOutlet`, lo que sugiere que se refiere a un objeto `UIScrollView` en la interfaz de usuario. Este objeto sirve como ventana gráfica para mostrar la imagen del gato y permite el desplazamiento en caso de que la imagen sea más grande que la pantalla.
- `imageView`, otra propiedad etiquetada con `@IBOutlet`, lo que indica que se refiere a un objeto `UIImageView` en la interfaz de usuario. Esta es la imagen del gato que se mostrará en la vista de desplazamiento.

Cuando la vista se carga en la memoria, se ejecuta el método `viewDidLoad`, configurando la propiedad `delegate` de `scrollView` para que sea esta misma instancia de `ViewController`. Esto implica que la clase `ViewController` controlará el comportamiento de la vista de desplazamiento.

El método `viewDidAppear` se llama cuando la vista se presenta en la pantalla, y aquí invocamos `updateZoomFor(size:)`, pasando el tamaño de la vista actual como parámetro. Esto garantiza que el zoom de la imagen se ajuste adecuadamente al tamaño de la pantalla.

El método `viewForZooming(in scrollView: UIScrollView)` es parte del protocolo `UIScrollViewDelegate` y determina que la vista a escalar (ampliar) es la imagen del gato.

Finalmente, el método personalizado `updateZoomFor` calcula los factores de escala necesarios para ajustar la imagen dentro del área de zoom. Los factores de escala se determinan en función del tamaño de la imagen (`imageView.bounds`) y el tamaño de la vista actual (`view.bounds`). Luego, tanto `scrollView.minimumZoomScale` como `scrollView.zoomScale` se establecen en el valor mínimo de los factores de escala, asegurando que la imagen encaje correctamente dentro de la vista de desplazamiento.

En resumen, este código configura una vista de desplazamiento que muestra una imagen de un gato, lo que permite operaciones de zoom y desplazamiento dentro del área ampliada. La lógica dentro de la clase `ViewController` garantiza que la imagen se ajuste adecuadamente a la pantalla y proporciona una experiencia de usuario fluida al interactuar con la imagen del gato.

##### Formulario de desplazamiento-Marcocrasi

Resumen 

El propósito de este código es garantizar que, cuando el teclado aparece o desaparece dentro de la aplicación, la vista se ajusta automáticamente para mantener los campos de entrada de texto visibles y accesibles.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c4d3282-49e5-4938-916f-e6b73c1d9284

Dentro de la clase `ViewController`, se declara una propiedad llamada `scrollView`, que representa un objeto `UIScrollView`. Este objeto se utiliza para crear una vista desplazable en la interfaz de usuario.

El método `viewDidLoad()` se ejecuta cuando se carga la vista. Aquí se realiza la configuración de la vista inicial, incluido el registro de notificaciones relacionadas con el teclado llamando a `registerForKeyboardNotifications()`.

El método `registerForKeyboardNotifications()` se encarga de registrar dos notificaciones del sistema: una que se activa cuando se muestra el teclado y otra cuando está oculto. Estas notificaciones son cruciales para responder a eventos relacionados con el teclado.

Cuando se muestra el teclado, se llama al método `keyboardWasShown(_:)`. En este método, se obtiene información sobre el teclado, como su tamaño, y esta información se utiliza para ajustar el contenido de `scrollView`. Las propiedades `contentInset` y `scrollIndicatorInsets` de `scrollView` se modifican para garantizar que los campos de entrada de texto permanezcan visibles.

Cuando el teclado está a punto de ocultarse, se llama al método `keyboardWillBeHidden(_)`. En este caso, las propiedades `contentInset` y `scrollIndicatorInsets` de `scrollView` se restablecen a su estado original, asegurando que la vista vuelva a su posición normal.

En resumen, este código es esencial para garantizar una experiencia de usuario perfecta en una aplicación de iOS. Cuando se muestra el teclado, la vista se ajusta automáticamente para evitar que el teclado cubra elementos de la interfaz de usuario. Cuando el teclado está oculto, la vista vuelve a su estado original. Este enfoque mejora la usabilidad al permitir a los usuarios interactuar con los campos de entrada de texto cómodamente, sin obstrucciones del teclado. El uso de notificaciones del sistema y la manipulación de `scrollView` son claves para lograr este comportamiento.

##### DesplazamientoDesafíoHorizontal

Resumen

Se ha desarrollado una aplicación para cumplir el desafío de crear una vista de desplazamiento horizontal que muestre tres imágenes favoritas. Esta aplicación presenta una vista de desplazamiento horizontal visualmente agradable con las tres imágenes favoritas del usuario. Los usuarios pueden deslizar fácilmente estas imágenes para disfrutar y apreciar las favoritas elegidas.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/0f304516-4c40-4e01-a546-606b6ec77faa


