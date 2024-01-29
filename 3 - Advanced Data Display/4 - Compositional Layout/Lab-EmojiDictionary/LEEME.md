### `Laboratorio de diseño compositivo`

En este laboratorio, he aplicado mis conocimientos y habilidades para evolucionar el proyecto Emoji Dictionary. He implementado diseños de cuadrícula y columnas, una función para cambiar entre ellos, y añadido encabezados de sección simples.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a4a29410-4872-4df6-9a5b-42b03f4c39b4

El código proporcionado consta de varios componentes que se combinan para crear una aplicación para gestionar una colección de emojis. La aplicación se compone de tres clases principales: `EmojiCollectionViewHeader`, `EmojiCollectionViewController` y `AddEditEmojiTableViewController`. También utiliza dos estructuras, "Emoji" y "Sección", para modelar y organizar emojis. A continuación, explicaremos cómo se combinan estas partes para crear la funcionalidad general de la aplicación.

En primer lugar, se define la estructura "Emoji". Esta estructura representa un emoji y almacena sus atributos principales, como "símbolo", "nombre", "descripción" y "uso". Además, una propiedad calculada llamada "sectionTitle" se calcula dinámicamente y se utiliza para organizar emojis en secciones según la letra inicial de sus nombres.

La estructura "Sección" se emplea para agrupar emojis en secciones con un "título" que identifica la sección.

A continuación, se implementa la clase `EmojiCollectionViewHeader`, que extiende `UICollectionReusableView`. Esta clase es responsable de crear encabezados con efectos visuales para cada sección en la vista de colección de emoji. La clase `EmojiCollectionViewHeader` incluye un `UILabel` llamado "titleLabel" que muestra el título de la sección.

La clase principal de la aplicación es `EmojiCollectionViewController`, que es un controlador de vista que hereda de `UICollectionViewController`. Esta clase administra la vista de colección que muestra los emojis. El controlador se inicializa con un conjunto de emojis predefinidos, que se almacenan en una matriz. La vista de la colección se organiza según el diseño actual, que puede ser una "cuadrícula" o una "columna".

La vista de colección emplea dos diseños diferentes generados por los métodos `generateGridLayout` y `generateColumnLayout`. Estos métodos configuran la estructura de la vista de la colección, configurando elementos, grupos y secciones, así como márgenes y espacios entre elementos.

La edición de emoji se maneja a través de la clase `AddEditEmojiTableViewController`. Esta clase permite a los usuarios agregar nuevos emojis o editar los existentes. Los campos de texto en esta vista corresponden a los atributos emoji, como "símbolo", "nombre", "descripción" y "uso". El botón "Guardar" se habilita o deshabilita automáticamente según ciertas condiciones, como la presencia de un solo emoji en el campo de símbolo y el estado no vacío de los campos de texto.

Además, la función `textEditingChanged` se implementa para rastrear los cambios en los campos de texto y actualizar el estado del botón "Guardar".

La aplicación también permite a los usuarios eliminar emojis a través de un menú contextual, configurado en el método `contextMenuConfigurationForItemAt`. La eliminación de emoji se realiza con el método `deleteEmoji`.

En resumen, la aplicación administra una colección de emojis en una vista de colección, organiza emojis en secciones, permite agregar y editar emojis y brinda la opción de eliminar emojis a través de un menú contextual. La estructura de datos se basa en las clases `Emoji` y `Section`, y la interfaz de usuario se controla a través de las clases `EmojiCollectionViewController` y `AddEditEmojiTableViewController`.


