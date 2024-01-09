# Animación Práctica

Echa un vistazo a las aplicaciones iOS más populares y verás elegantes y sutiles animaciones utilizadas para crear una conexión con el contenido en pantalla. Cuando se implementan en los lugares correctos y en los momentos adecuados, la animación puede proporcionar retroalimentación, mejorar la sensación de manipulación directa o ayudar a los usuarios a visualizar los resultados de sus acciones.
En esta lección, aprendí cómo usar la clase UIView y los cierres para agregar animaciones que mejoran la presentación y funcionalidad de mis aplicaciones.

## Lo que Aprendí
- Cómo y cuándo usar animaciones para mejorar la experiencia del usuario.
- Qué propiedades se pueden animar utilizando UIKit.
- Cómo usar UIKit para crear animaciones básicas.

## Vocabulario
- `transformación afín`: Operación matemática que aplica una transformación lineal a elementos gráficos.
- `animación`: Proceso de cambiar gradualmente una propiedad de un objeto a lo largo del tiempo.
- `concatenar`: Combinar secuencialmente varias transformaciones.
- `Core Animation`: Marco de animación avanzado en iOS.
- `vista en vivo`: Representación visual actualizada en tiempo real en un entorno de desarrollo como Playground.
- `PlaygroundPage`: Módulo que proporciona funciones para interactuar con un Playground en tiempo de ejecución.
- `PlaygroundSupport`: Marco que ofrece soporte adicional para Playgrounds en Swift.
- `toque abajo`: Evento que ocurre cuando se presiona la pantalla o el ratón.
- `toque arriba`: Evento que ocurre cuando se levanta el dedo después de una pulsación.
- `transformar`: Cambiar la posición, tamaño u orientación de un objeto.
- `modelo de alambre`: Representación visual de un objeto tridimensional mediante líneas en lugar de superficies sólidas.

#### 3 - Animaciones

##### Concurso

resumen

La aplicación "Contest" permite a los usuarios ingresar su dirección de correo electrónico para participar en un concurso y ganar un premio. Si intentan enviar sin proporcionar una dirección de correo electrónico, la aplicación utiliza animaciones para resaltar el campo de texto y alertar al usuario de que es necesario completarlo para participar en el concurso.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9a5645bd-ff91-4c91-bf71-bc3f6ddf7379

En este código, se define una clase llamada `ViewController`, que hereda de `UIViewController`. Los controladores de vista en iOS son responsables de la gestión de la interfaz de usuario y la lógica de vista.

Dentro de esta clase, se declara una propiedad denominada `emailTextField` con el atributo `@IBOutlet`. Este atributo significa que esta propiedad está conectada a un elemento de la interfaz de usuario en Interface Builder, en este caso, un campo de texto.

El método `viewDidLoad` se llama automáticamente cuando la vista se carga en la memoria. Actualmente, este método está vacío, pero se utiliza para realizar configuraciones adicionales en la vista, si es necesario.

El método `enterButtonDidTouchUpInside` se ejecuta cuando se toca un botón, en este caso, el botón `Enter`. Aquí se realiza una comprobación: si el campo de texto (`emailTextField`) está vacío, se llama al método `performLabTextFieldShakeAnimation`. De lo contrario, se realiza una transición a otra vista usando `performSegue(withIdentifier:sender:)`.

El `performLabTextFieldShakeAnimation` es un método privado que realiza una animación en el campo de texto (`emailTextField`) para simular un efecto de `sacudida` cuando el campo está vacío. Esta animación emplea una transformación que desplaza el campo 20 puntos hacia la derecha y luego lo devuelve a su posición original. La duración total de la animación es de 0,4 segundos, dividida en dos partes de 0,2 segundos cada una: 0,2 segundos para el cambio y 0,2 segundos para volver a la posición original.

Además, se proporciona una extensión llamada "Challenge Solution", que define un método "performChallengeTextFieldShakeAnimation". Este método ejecuta una animación más compleja para simular un efecto de "sacudida" en el campo de texto. `UIView.animateKeyframes` se utiliza para dividir la animación en varios pasos o `fotogramas clave.` Cada fotograma clave desplaza horizontalmente el campo de texto y luego lo devuelve a su posición original. Esto crea un efecto de "sacudida" más elaborado que se repite varias veces.

En resumen, este código representa un controlador de vista en una aplicación de iOS que realiza animaciones en respuesta a la interacción del usuario. La animación "sacudir" se utiliza para indicar un campo de texto vacío, y la extensión "Challenge Solution" ofrece una versión más compleja de la animación "sacudir" para fines de experimentación o desafío.

##### MúsicaWireframe

Resumen

La aplicación es un wireframe (un esquema básico, sin funcionalidad real) de la pantalla "Now Playing" en la aplicación de música.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/1b9e7579-1522-42ad-b871-76b810250f4e

La `clase ViewController` contiene varias propiedades etiquetadas con la notación `@IBOutlet`, que están asociadas con componentes de la interfaz de usuario (GUI). Estas propiedades incluyen `albumImageView`, `reverseBackground`, `playPauseBackground`, `forwardBackground`, `reverseButton`, `playPauseButton` y `forwardButton`.

El `estado de reproducción` está controlado por la variable `isPlaying`, que determina si la música se está reproduciendo (`true`) o en pausa (`false`). Este estado se refleja visualmente a través del `playPauseButton`.

Dentro del método `viewDidLoad` se configuran elementos visuales, como los `botones de fondo` denominados `reverseBackground`, `playPauseBackground` y `forwardBackground`. Estos elementos se preparan para la interfaz redondeando sus esquinas y ocultándolas inicialmente con un valor "alfa" de "0,0".

El método `playPauseButtonTapped` se activa cuando se toca el `botón de reproducción/pausa` (`playPauseButton`). Si la música se está reproduciendo (`isPlaying == true`), se inicia una `animación` que restaura la imagen del álbum a su `tamaño original`. Si la música está en pausa (`isPlaying == false`), se ejecuta una animación que `reduce el tamaño de la imagen del álbum`.

Los métodos `touchedUpInside` y `touchedDown` se activan cuando se suelta o se toca un botón, respectivamente. Se determina cuál de los botones fue manipulado (adelante, "reproducir/pausar" o hacia atrás) y se ejecuta una "animación" que afecta a los elementos visuales asociados, como "buttonBackground". Al soltar el botón (`touchedUpInside`), los elementos vuelven a su estado original. Al tocar un botón ("touchedDown"), se aplican efectos visuales, incluido un aumento en la "opacidad" y una ligera "reducción de tamaño" del botón.

En resumen, el código presenta un controlador de vista que gestiona una interfaz de reproducción de música, empleando animaciones e interacciones visuales para mejorar la experiencia del usuario. Al interactuar con los botones de reproducción, pausa y navegación, se aplican animaciones para proporcionar retroalimentación visual. La "imagen del álbum" también está animada según el estado de reproducción, lo que contribuye a una experiencia de usuario más atractiva y dinámica.
