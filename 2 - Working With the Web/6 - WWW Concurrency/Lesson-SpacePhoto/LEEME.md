### `Foto espacial`

Una app que utiliza la API de la Fotografía Astronómica del Día (APOD) de la NASA para obtener datos y mostrar la información junto con la imagen en la propia aplicación.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a769780c-085e-4b5c-a3f1-56208cf336d6

El código proporcionado consta de tres componentes relacionados: `ViewController`, `PhotoInfoController` y `PhotoInfo`. Estos componentes trabajan juntos para recuperar información y una imagen de una fotografía espacial de la API de la NASA y mostrarla en una aplicación de iOS. Aquí hay una explicación técnica detallada de cómo funcionan estas partes y se relacionan entre sí.

En primer lugar, la clase `PhotoInfoController` es responsable de interactuar con la API de la NASA. Esta clase implementa dos funciones asincrónicas para recuperar información y una imagen de la fotografía espacial. Estas funciones manejan errores y utilizan la anotación "async" para indicar que son asincrónicas y pueden esperar a que se completen las operaciones de red.

La función `fetchPhotoInfo` construye una URL para la solicitud a la API de la NASA. Luego realiza una solicitud HTTP asincrónica usando "URLSession" para recuperar datos JSON que contienen información sobre la foto espacial. Garantiza que la respuesta sea válida comprobando el código de estado HTTP. Procede a decodificar los datos JSON en una instancia de la estructura `PhotoInfo` usando `JSONDecoder`.

La función `fetchImage(from url: URL)` se utiliza para recuperar la imagen asociada con la foto del espacio. Similar a "fetchPhotoInfo", realiza una solicitud HTTP asincrónica para obtener datos de imagen de la URL proporcionada. Una vez más verifica la respuesta y, si es válida, crea una instancia "UIImage" a partir de los datos de la imagen.

La clase `PhotoInfo` es un modelo de datos que se utiliza para representar información sobre una fotografía espacial. Tiene propiedades para almacenar el título, la descripción, la URL de la imagen y la información de derechos de autor de la foto. Se implementa de conformidad con el protocolo "Codable", lo que permite codificarlo y decodificarlo en formatos JSON o plist. Además, se utiliza una enumeración denominada "CodingKeys" para establecer asignaciones personalizadas entre los nombres de propiedades en la estructura y las claves en la API JSON de la NASA.

La clase `ViewController` sirve como controlador de vista principal de la aplicación. En el método `viewDidLoad`, se realiza la configuración inicial de la interfaz de usuario. La propiedad `photoInfoController` se inicializa para interactuar con la API y se inician tareas asincrónicas para recuperar información de la fotografía espacial y su imagen asociada. La anotación `@MainActor` se utiliza para garantizar que las actualizaciones de la interfaz de usuario se realicen en el hilo principal.

En caso de éxito, la información y la imagen de la foto se actualizan en la interfaz de usuario utilizando el método `updateUI(with photoInfo: PhotoInfo)`. Si se produce un error, se llama al método `updateUI(with error: Error)` para manejarlo y mostrar un mensaje de error en la interfaz de usuario.

En resumen, este código, en voz pasiva, permite que la aplicación iOS interactúe con la API de la NASA para obtener información y una imagen de fotografías espaciales, y luego presentar estos datos en la interfaz de usuario. Las clases `PhotoInfoController` y `PhotoInfo` desempeñan un papel fundamental en la obtención y representación de los datos, mientras que la clase `ViewController` coordina la interacción y presenta los resultados en la interfaz de usuario. El código emplea programación asincrónica y manejo de errores para garantizar un funcionamiento fluido y una experiencia de usuario receptiva.

