# `Proyecto Guiado: Hábitos`

Adquirí habilidades fundamentales en esta unidad, aprendiendo a utilizar vistas de colección para mostrar conjuntos de datos. También exploré Swift generics, trabajé con fuentes de datos difusas para facilitar actualizaciones dinámicas y descubrí el poder de los diseños composicionales para crear interfaces avanzadas. En este proyecto guiado, construí una sencilla aplicación cliente de redes sociales que motiva a los usuarios a seguir buenos `hábitos` al clasificarlos frente a otros usuarios.
Al igual que en el proyecto del restaurante en la unidad anterior, utilicé un servidor en mi computadora. Además, al igual que en el restaurante, mi enfoque se centró en la interfaz de usuario; los datos de la aplicación se proporcionaron junto con una simulación que modela la interacción de los usuarios con la aplicación a lo largo del tiempo.

## `Detalles del Servidor y Configuración del Proyecto`
Cada vez que trabajes con datos de un servicio web, es mejor comenzar examinando los datos que proporciona el servicio web. Viene con datos predeterminados, así que tómate un tiempo ahora para configurar el `servidor` y entender los detalles.

**Ejecutar el Servidor**
La carpeta `Habits` incluida en este proyecto contiene una aplicación macOS para el `servidor`, `HabitServer.app`. Abre la aplicación. Como en el proyecto `Restaurant`, es posible que veas un cuadro de diálogo de advertencia. Si lo ves, haz clic en "Abrir" para indicar que confías en la aplicación.

Para iniciar y detener el `servidor`, haz clic en el botón en la sección del `Servidor` a la izquierda. Si realizas cambios en los archivos de recursos del `servidor`, deberás detener y reiniciar el `servidor`.

![IMG_DDF6A3632556-1-3](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b8a6a9c9-fffd-49a6-a388-548946c80825)

La aplicación del `servidor` te permite editar usuarios, `hábitos`, `categorías` y el usuario activo, todos los cuales están definidos en archivos JSON. También puedes abrir la carpeta de imágenes que contiene las imágenes de perfil de usuario. Si deseas agregar tus propias imágenes en este directorio, asegúrate de que estén en formato PNG. Ten en cuenta que la imagen de perfil de un usuario siempre lleva el nombre del ID del usuario.

Para verificar que el `servidor` esté funcionando correctamente, asegúrate de que esté en ejecución, luego abre tu navegador y carga la URL http://localhost:8080. El navegador debería mostrar texto que indique el estado del `servidor`. Si recibes un error, la causa más común es que uno de los archivos JSON tenga un formato no válido. Deberás verificar que los datos JSON sean válidos, cerrar la ventana de la aplicación y reiniciar el `servidor`. Puedes utilizar el botón "Reset Data" para descartar tus datos personalizados y restaurar los archivos originales.

**Consejo Profesional:** Para comprobar si un archivo JSON es válido, ejecuta `python -m json.tool <archivo JSON>` desde una línea de comandos. La salida será el JSON del archivo (indicando que es válido) o un mensaje de error que explica qué está mal.

Como en el proyecto del `restaurante`, es posible que veas una solicitud pidiendo permiso para permitir conexiones entrantes al `servidor`. Si la ves, haz clic en "Permitir".


## `Puntos de Acceso del Servidor`
Para el servicio de la API `Habits`, cada URL consiste en http://localhost:8080 y uno de los siguientes puntos de acceso:

- `/users`: Una solicitud GET a este punto de acceso devolverá un diccionario que contiene los usuarios de la red social.

- `/habits`: Una solicitud GET a este punto de acceso devolverá un diccionario que contiene los `hábitos` que un usuario puede registrar.

- `/images`: Combinado con el nombre de una imagen, una solicitud GET a este punto de acceso devolverá la imagen de perfil asociada con un usuario.

- `/userStats`: Una solicitud GET a este punto de acceso devolverá un resumen de los `hábitos` registrados para todos los usuarios. También se puede combinar con un parámetro de consulta, "ids", para devolver estadísticas para un subconjunto de usuarios.

- `/habitStats`: Una solicitud GET a este punto de acceso devolverá un resumen de los registros de usuario para todos los `hábitos`. También se puede combinar con un parámetro de consulta, "names", para devolver estadísticas para un subconjunto de hábitos.

- `/combinedStats`: Una solicitud GET a este punto de acceso devolverá una respuesta combinada que comprende información de `/userStats` y `/habitStats`.

- `/userLeadingStats`: Combinado con un ID de usuario, una solicitud GET a este punto de acceso devolverá estadísticas de usuario que contienen solo aquellos `hábitos` en los que el usuario lidera. Si un usuario no lidera en ningún hábito, no se devolverán estadísticas.

- `/loggedHabit`: Un POST a este punto de acceso registrará un nuevo evento relacionado con un `hábito`, la forma en que el usuario dice, por ejemplo, "Acabo de dar un paseo".


## `Estructura JSON`
Para examinar los datos JSON de la API, utilizarás una herramienta de línea de comandos llamada `curl`. Abre la aplicación Terminal y luego escribe el siguiente comando para ver los usuarios:
 

`curl localhost:8080/users`


En el nivel raíz del JSON hay un diccionario que contiene claves de `ID` de usuario; los valores correspondientes incluyen los nombres e `IDs` de usuario. (Como en el proyecto anterior, si comparas los valores de este diccionario con `users.json`, notarás que el JSON devuelto por el servidor no coincide exactamente con el JSON en el archivo debido a la forma en que el servidor maneja los datos). En cada diccionario del JSON devuelto por el servidor, verás al menos dos de las siguientes claves:
- `id` es una cadena única que distingue a un usuario de otro. Todos los usuarios tienen un `ID`, y los valores de `ID` son únicos. Si modificas el archivo `users.json` del servidor, asegúrate de que cada valor de `ID` siga siendo único.
- `name` es una cadena que representa el nombre que el usuario presenta a la red social. Todos los usuarios tienen un nombre, pero el servidor no requiere que los nombres de usuario sean únicos.
- `color` es un diccionario que especifica la tonalidad, saturación y brillo que definen un color. El usuario establece el color como una preferencia, y lo usarás para agregar un toque adicional de la personalidad de cada usuario a la aplicación. `color` puede ser nulo.
- `bio` es una cadena con información adicional que el usuario ha elegido compartir con otros.

Ahora utiliza `curl` para inspeccionar todos los `hábitos`.

 
`curl localhost:8080/habits`

Cada elemento en el diccionario JSON devuelto de objetos de `hábitos` tiene las siguientes propiedades:
- La clave del diccionario es el nombre del `hábito`, que lo identifica de manera única, y el valor es el hábito.
- `name` es el nombre mostrado del hábito.
- `category` es un diccionario con tres claves: `name`, `color`, y `description`, que definen la categoría a la que pertenece el `hábito`.
- `info` es una cadena con información descriptiva adicional para el `hábito`.

También puedes usar `curl localhost:8080/categories` para ver todas las `categorías`. Ten en cuenta que no utilizarás este punto de acceso en la aplicación porque no hay una pantalla que utilice categorías como objetos principales de visualización.

## `Datos Dinámicos`
En este proyecto, el `servidor` simula una red social activa, con usuarios que registran periódicamente sus actividades. Gran parte del comportamiento de tu aplicación se basa en los datos generados por esta actividad. A los usuarios integrados (los que están en `users.json`) se les asignan tasas aleatorias para registrar cada uno de los `hábitos`, y estos datos se registran en el servidor. El servicio de `Habits` no permite navegar por una línea de tiempo de entradas de registro individuales; agrega todas las entradas para producir resúmenes. Puedes consultar los datos de registro de `hábitos` de dos maneras: por usuario o por `hábito`.


Debes iniciar la simulación para ver estos datos. En la aplicación `HabitServer`, haz clic en "Start" bajo Simulation. Puedes usar el control deslizante para ajustar la velocidad de la simulación. Arrastra el control deslizante hacia la izquierda para ralentizar la simulación, de modo que se asemeje más a la actividad de la vida real, con segundos o minutos transcurriendo entre hábitos registrados. Arrástralo hacia la derecha para acelerar la simulación y probar cómo responde tu aplicación a datos cambiantes.

En `Terminal`, escribe:

`curl localhost:8080/habitStats`

En el array devuelto, verás objetos con las siguientes propiedades:
- `habit` es el `hábito` para el cual se recopilaron las estadísticas.
- `userCounts` es un array de objetos de diccionario adicionales con dos claves cada uno:
  - `user` es el usuario que registró el hábito.
  - `count` es el número de eventos registrados.

Ten en cuenta que puedes utilizar una cadena de consulta opcional para especificar una lista separada por comas de nombres de hábitos específicos, por ejemplo, `?names=Yoga`.

Las estadísticas agregadas para los usuarios tienen una estructura similar. Escribe el siguiente comando en `Terminal` para verlo:

`curl localhost:8080/userStats`


En el array devuelto, verás objetos con las siguientes propiedades:
- `user` es el `usuario` para el cual se recopilaron las estadísticas.
- `habitCounts` es un array de objetos adicionales con dos claves cada uno:
  - `habit` es el `hábito` que el usuario ha registrado.
  - `count` es el número de eventos registrados.

Ten en cuenta que puedes utilizar una cadena de consulta opcional para especificar una lista separada por comas de nombres de `hábitos` específicos, por ejemplo, `?ids=user0`.

Como conveniencia, puedes consultar las estadísticas de usuario y las estadísticas de `hábitos` al mismo tiempo. Escribe el siguiente comando en `Terminal`:

`curl localhost:8080/combinedStats`

El JSON devuelto contiene un diccionario de nivel raíz con dos claves: `userStatistics` y `habitStatistics`. La estructura de los arrays correspondientes debería ser idéntica a las respuestas que obtienes de las solicitudes a `/userStats` y `/habitStats`.

Finalmente, intenta consultar al `servidor` para obtener estadísticas de liderazgo en `hábitos`. Escribe lo siguiente en `Terminal`:

`curl localhost:8080/userLeadingStats/user0`

El objeto devuelto tendrá una estructura idéntica a los objetos en el array devuelto por el punto de acceso `/userStats`, pero los datos contendrán solo recuentos para aquellos `hábitos` en los que el usuario lidera. Es posible que debas probar varios `ID` de usuario diferentes antes de obtener resultados con uno o más recuentos de `hábitos`, ya que un usuario dado puede no liderar en ningún `hábito`.


## `Envío de Datos`
Hay un punto de acceso adicional, loggedHabit, que requiere un POST de datos JSON. Lo utilizarás para permitir al usuario registrar sus propios hábitos. La aplicación HabitServer no maneja cuentas de usuario ni inicio de sesión, por lo que utiliza el contenido del archivo activeUser.json para identificar al usuario que actualmente utiliza la aplicación, en lugar de aquellos simulados por el servidor. No aprenderás a usar curl para probar este punto de acceso.

## `Hábitos`

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/aef78543-2d64-4ab8-949c-f17b1185007f


**`Aplicación de seguimiento de hábitos de iOS - explicación técnica`**

Los fragmentos de código proporcionados son parte de una aplicación iOS para el seguimiento de hábitos, que funciona como una red social para compartir hábitos. Esta explicación detallada proporciona una descripción detallada de los diversos componentes, modelos de datos y solicitudes de red utilizados dentro de la aplicación.

**`Capa de modelo:`**

1. **`Modelo de hábitos:`**
- La estructura "Habit" representa un hábito e incluye atributos como su "nombre", "categoría" e "información". La "categoría" se clasifica además en una estructura de "Categoría" anidada.
- El modelo "Habit" se ajusta a los protocolos "Codable", "Hashable" y "Comparable", lo que lo hace serializable, hash y comparable según el "nombre" del hábito.

2. **`Modelo de categoría:`**
- La estructura `Categoría` define una categoría para hábitos, que contiene el `nombre` y el `color`. El "color" se define como una estructura "Color" separada.
- Al igual que el modelo `Habit`, `Category` también se ajusta a los protocolos `Codable` y `Hashable`, lo que permite la serialización y la hace hashable.

3. **`Modelo de color:`**
- La estructura "Color" representa un color utilizando los valores "tono", "saturación" y "brillo". También cumple con el protocolo "Codable" y tiene una propiedad calculada para convertir el color en "UIColor".

**`Capa de red:`**

4. **`Solicitudes de API:`**
- Se definen varias estructuras de solicitud API, como `HabitRequest`, `UserRequest`, `HabitStatisticsRequest`, `UserStatisticsRequest`, `HabitLeadStatisticsRequest`, `ImageRequest`, `LogHabitRequest` y `CombinedStatisticsRequest`. Cada uno corresponde a un tipo específico de solicitud de API.
- Estas estructuras de solicitud se ajustan al protocolo "APIRequest". Especifican la ruta de la solicitud, los parámetros de consulta y los datos (si corresponde). Además, manejan la deserialización de las respuestas API.
- Se implementa el manejo de errores para capturar problemas como elementos faltantes o solicitudes fallidas.

**`Capa de interfaz de usuario:`**

5. **`Controlador HabitCollectionView:`**
- Este controlador de vista administra una vista de colección que muestra una lista de hábitos. Los hábitos están organizados en secciones, incluidos "Favoritos" y categorías basadas en el modelo "Categoría".
- Se utiliza una fuente de datos diferenciable, `UICollectionViewDiffableDataSource`, para una gestión eficiente de los datos de la vista de colección. Maneja actualizaciones fluidas cuando se producen cambios en la fuente de datos.
- Cada hábito se presenta en una celda dentro de la vista de colección y los usuarios pueden interactuar con los hábitos a través de menús contextuales.

6. **`Controlador HabitDetailView:`**
- Este controlador de vista muestra información detallada sobre un hábito seleccionado. Proporciona una vista del nombre, la categoría y las estadísticas relacionadas del hábito.
- Similar a `HabitCollectionViewController`, se utiliza una fuente de datos diferenciable para administrar y actualizar la vista de colección dentro de este controlador de vista.

**`Fuentes de datos diferenciables:`**
- La aplicación emplea fuentes de datos diferenciables para administrar y mostrar datos en vistas de colección de manera eficiente. Estas fuentes de datos son parte del marco Combine introducido en iOS 13, lo que permite actualizaciones fluidas y eficientes de las vistas de colección.
- Las fuentes de datos diferenciables funcionan con instantáneas, que representan el estado actual de los datos de la vista de colección. Se actualizan automáticamente cuando se producen cambios.
- Cuando se agregan nuevos hábitos, categorías o secciones, o cuando se actualizan hábitos, se crea una nueva instantánea y se aplica a la fuente de datos. Este enfoque es muy eficiente y conduce a una interfaz de usuario receptiva.

**`Ventajas de las fuentes de datos diferenciables:`**
- Proporcionan una manera conveniente de administrar y mostrar datos dentro de una vista de colección, asegurando que la interfaz de usuario permanezca sincronizada con la fuente de datos.
- Las fuentes de datos diferenciables simplifican el proceso de insertar, eliminar o mover elementos dentro de una vista de colección, lo que evita que los desarrolladores administren estas operaciones manualmente.
- Las interacciones del usuario con la aplicación dan como resultado cambios en el modelo de datos que se reflejan perfectamente en la interfaz de usuario con animaciones fluidas, lo que mejora la experiencia general del usuario.

En resumen, la aplicación aprovecha fuentes de datos diferenciables para optimizar el rendimiento y la experiencia del usuario de las vistas de colección. Estas fuentes de datos manejan automáticamente actualizaciones y animaciones en respuesta a cambios en la fuente de datos, lo que las convierte en un componente crucial del desarrollo de aplicaciones iOS modernas para la gestión eficiente de los componentes de la interfaz de usuario.


# `Resumen`

He recorrido un largo camino desde que comencé con Desarrollo en Swift de Colecciones de Datos. En esta unidad, dediqué la mayor parte del tiempo a mostrar conjuntos extensos de datos en diversas formas. En primer lugar, adquirí los conceptos básicos de las vistas de colección, aprovechando mis conocimientos existentes sobre las vistas de tabla. Luego, comprendí cómo los genéricos en Swift me permiten escribir código generalizado. Después, construí interfaces de usuario cada vez más complejas al aprovechar las amplias capacidades de los diseños composicionales y las fuentes de datos difusas.

