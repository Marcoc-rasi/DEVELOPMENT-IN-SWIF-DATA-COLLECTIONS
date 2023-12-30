En esta unidad, desarrollé habilidades clave al aprender a mostrar listas mediante `vistas de tabla`, construir pantallas que permiten una entrada compleja y `guardar datos en el dispositivo`. En el proyecto guiado, integré estas habilidades para crear una aplicación que gestiona y almacena listas para su posterior recuperación. A través de una pantalla personalizada, podía `agregar, modificar y eliminar elementos en la lista`, adaptando la forma de entrada según el tipo de ítems.

Durante este proceso, adquirí tres habilidades fundamentales para crear aplicaciones comunes: la capacidad de listar datos en una `vista de tabla`, la aplicación del patrón de diseño `MVC` para la arquitectura y el conocimiento sobre cómo `persistir datos entre sesiones de la aplicación`. Además, exploré el lanzamiento de aplicaciones, la construcción de `vistas de desplazamiento`, el uso de `controladores de vista del sistema` y la creación de `formularios complejos` para recopilar información del usuario.

Ahora, con la habilidad de construir `vistas de tabla`, persistir datos y utilizar el patrón `MVC` para diseñar aplicaciones, tengo la capacidad de desarrollar aplicaciones más complejas que almacenan datos localmente. Este conocimiento me permite abordar `nuevos marcos y herramientas` consultando la documentación, ya que cada uno se basa en las habilidades que ya he adquirido.

En la siguiente unidad, exploré cómo mejorar mis aplicaciones al `obtener y enviar información a través de Internet`. Estoy bien encaminado para convertirme en un desarrollador experimentado de `iOS`.

#### Proyecto guiado - Lista

##### ToDoList-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e4f905f2-c3e1-4f0e-84f8-0d33d73b5e8b

En el código, se está desarrollando una aplicación de iOS para gestionar una lista de tareas pendientes. Esta aplicación utiliza varias clases y estructuras que funcionan juntas para permitir a los usuarios crear, ver, editar y eliminar tareas.

La clase central de la aplicación es `ToDoTableViewController`, que hereda de `UITableViewController`. Esta clase sirve como controlador de vista principal y es responsable de mostrar la lista de tareas "por hacer" en una vista de tabla. También implementa el protocolo `ToDoCellDelegate` para manejar eventos específicos de las celdas de tareas.

Las tareas "Tareas pendientes" en la aplicación se representan mediante la estructura "Tareas pendientes". Cada tarea tiene propiedades como un "identificador único" (UUID) que garantiza su unicidad, un "título" que describe la tarea, un indicador "isComplete" que muestra si la tarea está marcada como completa, una "fecha de vencimiento" y un campo opcional de "notas" relacionado con la tarea. La estructura "ToDo" también proporciona métodos para guardar, cargar y comparar tareas.

El controlador de vista `ToDoTableViewController` utiliza una matriz de objetos `ToDo` para almacenar las tareas "Tareas pendientes". Al cargar la vista, comprueba si hay tareas guardadas previamente. Si existen, los carga; de lo contrario, carga tareas de muestra.

La vista de tabla se completa con las tareas "por hacer" y muestra información relevante como el título y el estado de finalización. Los usuarios pueden agregar nuevas tareas tocando el botón "agregar" o editar tareas existentes seleccionando una tarea de la lista. Además, pueden marcar tareas como completadas o incompletas tocando un botón de marca de verificación.

Cuando se edita una tarea, se abre la vista `ToDoDetailTableViewController`. Esta vista permite al usuario ingresar o modificar el título, la fecha de vencimiento y las notas de la tarea. También cuenta con un botón de marca de verificación para alternar el estado de finalización de la tarea. `ToDoTableViewController` se comunica con esta vista para actualizar o guardar tareas utilizando el método "unwindToToDoList(segue: UIStoryboardSegue)".

La celda personalizada `ToDoCell` se utiliza para mostrar cada tarea en la vista de tabla. La celda contiene una etiqueta para mostrar el título de la tarea y un botón de marca de verificación para cambiar el estado de finalización de la tarea. Cuando se toca el botón de marca de verificación, notifica al controlador de vista a través del protocolo `ToDoCellDelegate`.

En resumen, el código proporcionado describe la estructura y el flujo de trabajo de una aplicación iOS para gestionar una lista de tareas "tareas pendientes". Las tareas se representan mediante la estructura "ToDo" y la aplicación emplea controladores de vista y celdas personalizadas para permitir a los usuarios interactuar con las tareas, modificarlas y marcarlas como completas o incompletas. La aplicación también admite guardar y cargar tareas para mantener un registro persistente de ellas.
