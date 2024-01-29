### `ISpy-Marcocrasi`

Esta es  una aplicación que muestra una imagen de un gato y permite operaciones de zoom y desplazamiento dentro del área ampliada.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b00cc336-41cb-4633-84fd-c7270f7438d2

Primero, importamos el módulo UIKit, que es crucial para el desarrollo de aplicaciones iOS. Luego, definimos una clase llamada `ViewController`, que actúa como el controlador principal de la vista de la aplicación. La clase hereda de `UIViewController` y se ajusta al protocolo `UIScrollViewDelegate`, lo que indica que estamos habilitando la manipulación de las vistas de desplazamiento.

Dentro de esta clase encontramos dos propiedades esenciales:
- `scrollView`, que está etiquetado con `@IBOutlet`, lo que sugiere que se refiere a un objeto `UIScrollView` en la interfaz de usuario. Este objeto sirve como ventana gráfica para mostrar la imagen del gato y permite el desplazamiento en caso de que la imagen sea más grande que la pantalla.
- `imageView`, otra propiedad etiquetada con `@IBOutlet`, lo que indica que se refiere a un objeto `UIImageView` en la interfaz de usuario. Esta es la imagen del gato que se mostrará en la vista de desplazamiento.

Cuando la vista se carga en la memoria, se ejecuta el método `viewDidLoad`, configurando la propiedad `delegate` de `scrollView` para que sea esta misma instancia de `ViewController`. Esto implica que la clase `ViewController` controlará el comportamiento de la vista de desplazamiento.

El método `viewDidAppear` se llama cuando la vista se presenta en la pantalla, y aquí invocamos `updateZoomFor(size:)`, pasando el tamaño de la vista actual como parámetro. Esto garantiza que el zoom de la imagen se ajuste adecuadamente al tamaño de la pantalla.

El método `viewForZooming(in scrollView: UIScrollView)` es parte del protocolo `UIScrollViewDelegate` y determina que la vista a escalar (ampliar) es la imagen del gato.

Finalmente, el método personalizado `updateZoomFor` calcula los factores de escala necesarios para ajustar la imagen dentro del área de zoom. Los factores de escala se determinan en función del tamaño de la imagen (`imageView.bounds`) y el tamaño de la vista actual (`view.bounds`). Luego, tanto `scrollView.minimumZoomScale` como `scrollView.zoomScale` se establecen en el valor mínimo de los factores de escala, asegurando que la imagen encaje correctamente dentro de la vista de desplazamiento.

En resumen, este código configura una vista de desplazamiento que muestra una imagen de un gato, lo que permite operaciones de zoom y desplazamiento dentro del área ampliada. La lógica dentro de la clase `ViewController` garantiza que la imagen se ajuste adecuadamente a la pantalla y proporciona una experiencia de usuario fluida al interactuar con la imagen del gato.
