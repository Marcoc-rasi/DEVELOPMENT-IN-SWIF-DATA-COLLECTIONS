# `Swift Generics`

Los genéricos son una herramienta poderosa en Swift. Al principio, pueden parecer confusos, pero una vez que te familiarizas con los fundamentos del lenguaje, se convierten en una forma fantástica de hacer que tus proyectos sean más legibles y fáciles de mantener. Después de dominar los conceptos, te das cuenta de que los genéricos son una gran ayuda para escribir un código más limpio, abstracto y reutilizable. ¡Realmente hacen que la programación sea mucho más eficiente y elegante!

## `Lo que Aprendí`

- Comprender los beneficios de los genéricos.
- Identificar tipos y métodos genéricos en función de la sintaxis de su definición.
- Comprender cómo funcionan juntos los protocolos y los genéricos.
- Comprender los beneficios de los protocolos con tipos asociados.

## `Vocabulario`
- `tipo asociado`: Tipo relacionado con un protocolo que se especifica cuando se adopta el protocolo.
- `azúcar sintáctico`: Sintaxis simplificada que hace que el código sea más legible y conciso.
- `alias de tipo`: Nombre alternativo que se puede dar a un tipo existente.
- `parámetro de tipo`: Tipo que se utiliza como un marcador de posición para representar tipos específicos cuando se usa un tipo genérico.


### `Búsqueda de formas de vida`

En este laboratorio, he construido una aplicación que facilita a los usuarios la búsqueda de formas de vida y la visualización de información taxonómica y fotos disponibles. Aplicando lo aprendido en esta lección y en lecciones anteriores, he creado una app que utiliza la API de servicios de datos de la Enciclopedia de la Vida (www.eol.org) para explorar su base de datos y obtener información sobre las formas de vida identificadas.

[https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8552000d-9ec3-4637-8f35-e64546a4e3ba](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/2a00f4ca-46d6-4741-9ad2-ad353e4812d5)

Las "estructuras" y "clases" proporcionadas se han diseñado para manejar solicitudes de red y decodificar respuestas en una aplicación que interactúa con la API de Encyclopedia of Life (EOL). Estos componentes son fundamentales para la obtención y manipulación de datos biológicos dentro de la aplicación.

Primero, se han definido "estructuras" para representar datos relacionados con objetos en EOL. La "estructura EOLItem" encapsula información esencial sobre un objeto, como su "nombre común", "nombre científico" e "identificador único". En particular, las propiedades `commonName` y `scientificName` se utilizan para describir los nombres común y científico del objeto, respectivamente. Además, "id" se utiliza para identificar de forma única el objeto.

Por otro lado, la `estructura SearchResponse` sirve para encapsular una respuesta de búsqueda, que consta de una lista de objetos `EOLItem`. Esta estructura es crucial para la aplicación, ya que almacena los resultados de las búsquedas realizadas en EOL.

La "clase EOLController" juega un papel central en la aplicación, ya que actúa como un controlador de solicitudes de red. La implementación de este controlador sigue un patrón Singleton, lo que significa que proporciona una única instancia global accesible en toda la aplicación. Se puede acceder a esta instancia a través de la propiedad estática "compartida". El controlador ofrece un método llamado `sendRequest` que permite enviar solicitudes de red de forma asincrónica y manejar las respuestas.

El "método sendRequest" está adaptado para trabajar con tipos que cumplen con el "protocolo APIRequest". Este protocolo define dos requisitos clave: "urlRequest" y "decodeResponse". El primero es responsable de construir la solicitud de URL basada en los datos específicos de cada solicitud, y este último se utiliza para decodificar la respuesta de la solicitud en un tipo específico. La implementación de `decodeResponse` depende de la naturaleza de la solicitud y del tipo de respuesta esperada.

El controlador también incluye una extensión de la "Estructura de datos" que proporciona la capacidad de convertir datos JSON en una cadena legible y formateada. Esto es muy útil para la depuración, ya que permite visualizar la estructura de los datos de respuesta JSON.

Además, se han definido "estructuras" que representan solicitudes específicas a la API EOL. Cada "estructura" de solicitud, como "EOLSearchAPIRequest", "EOLItemDetailAPIRequest", "EOLHierarchyAPIRequest" y "EOLImageAPIRequest", implementa el "protocolo APIRequest" con el objetivo de construir solicitudes específicas y decodificar las respuestas correspondientes.

En resumen, el código proporcionado comprende "estructuras" y "clases" que permiten la interacción con la API de Encyclopedia of Life. Estos componentes son cruciales para realizar solicitudes de red, obtener datos relacionados con objetos biológicos y decodificar respuestas para una mayor manipulación dentro de la aplicación. La implementación está diseñada para ser eficiente y escalable, facilitando la incorporación de nuevas funcionalidades relacionadas con la obtención de información biológica.
