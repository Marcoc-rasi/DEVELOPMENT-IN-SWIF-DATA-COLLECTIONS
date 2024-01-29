### `MúsicaWireframe`

La aplicación es un wireframe (un esquema básico, sin funcionalidad real) de la pantalla "Now Playing" en la aplicación de música.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/1deebd41-0447-4637-b41f-f826d54b66a5

La `clase ViewController` contiene varias propiedades etiquetadas con la notación `@IBOutlet`, que están asociadas con componentes de la interfaz de usuario (GUI). Estas propiedades incluyen `albumImageView`, `reverseBackground`, `playPauseBackground`, `forwardBackground`, `reverseButton`, `playPauseButton` y `forwardButton`.

El `estado de reproducción` está controlado por la variable `isPlaying`, que determina si la música se está reproduciendo (`true`) o en pausa (`false`). Este estado se refleja visualmente a través del `playPauseButton`.

Dentro del método `viewDidLoad` se configuran elementos visuales, como los `botones de fondo` denominados `reverseBackground`, `playPauseBackground` y `forwardBackground`. Estos elementos se preparan para la interfaz redondeando sus esquinas y ocultándolas inicialmente con un valor "alfa" de "0,0".

El método `playPauseButtonTapped` se activa cuando se toca el `botón de reproducción/pausa` (`playPauseButton`). Si la música se está reproduciendo (`isPlaying == true`), se inicia una `animación` que restaura la imagen del álbum a su `tamaño original`. Si la música está en pausa (`isPlaying == false`), se ejecuta una animación que `reduce el tamaño de la imagen del álbum`.

Los métodos `touchedUpInside` y `touchedDown` se activan cuando se suelta o se toca un botón, respectivamente. Se determina cuál de los botones fue manipulado (adelante, "reproducir/pausar" o hacia atrás) y se ejecuta una "animación" que afecta a los elementos visuales asociados, como "buttonBackground". Al soltar el botón (`touchedUpInside`), los elementos vuelven a su estado original. Al tocar un botón ("touchedDown"), se aplican efectos visuales, incluido un aumento en la "opacidad" y una ligera "reducción de tamaño" del botón.

En resumen, el código presenta un controlador de vista que gestiona una interfaz de reproducción de música, empleando animaciones e interacciones visuales para mejorar la experiencia del usuario. Al interactuar con los botones de reproducción, pausa y navegación, se aplican animaciones para proporcionar retroalimentación visual. La "imagen del álbum" también está animada según el estado de reproducción, lo que contribuye a una experiencia de usuario más atractiva y dinámica.

