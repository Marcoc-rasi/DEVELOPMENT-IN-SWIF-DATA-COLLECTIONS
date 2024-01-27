# Modelo-Vista-Controlador



## Lo que Aprendí



## Vocabulario
- `abstracción`: Representación simplificada de la realidad.
- `arquitectura`: Estructura y organización de un sistema.
- `controlador`: Componente que gestiona la lógica y el flujo de datos entre el modelo y la vista.
- `modelo`: Representación de los datos y reglas de negocio de la aplicación.
- `Modelo-Vista-Controlador`: Patrón de diseño que separa los componentes de la aplicación en tres roles principales.
- `vista`: Componente encargado de mostrar la interfaz de usuario y recibir la entrada del usuario.

#### 3 - Controlador de vista de modelo

Resumen

En este laboratorio, planificarás y crearás una aplicación que utiliza un diseño MVC adecuado. La aplicación constará de dos pantallas para mostrar los atletas favoritos del usuario, permitiéndole agregar nuevos atletas a la lista y editar las entradas existentes.

##### Atleta favorito

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acb1c1c6-ccd8-4798-bff5-cb738b7cd19f

El código consta de tres secciones principales que juntas forman una aplicación para gestionar la información de los deportistas. El primer fragmento de código define una clase llamada `AthleteTableViewController`, que hereda de `UITableViewController` y se utiliza para mostrar una lista de atletas en una vista de tabla dentro de una aplicación iOS.

La clase `AthleteTableViewController` emplea una matriz llamada `athletes` para almacenar objetos de la estructura `Athlete`. Esta estructura, definida en el segundo fragmento de código, representa un atleta con propiedades como nombre, edad, liga y equipo. La estructura "Atleta" también presenta una propiedad calculada llamada "descripción", que genera una descripción textual del atleta.

La aplicación utiliza tres métodos clave dentro de "AthleteTableViewController" para interactuar con la vista de tabla. El método `viewWillAppear` garantiza que la vista de la tabla se actualice antes de que aparezca en la pantalla. Posteriormente, los métodos `tableView(_:numberOfRowsInSection:)` y `tableView(_:cellForRowAt:)` del protocolo `UITableViewDataSource` se emplean para determinar el número de filas y cómo se deben configurar las celdas de la vista de tabla.

Además, la clase `AthleteTableViewController` contiene dos acciones anotadas con `@IBSegueAction`. El primero, "addAthlete", se activa cuando se agrega un nuevo atleta y crea una instancia de "AthleteFormViewController" para este propósito. El segundo, "editAthlete", se invoca para editar un atleta existente y pasa el atleta seleccionado a "AthleteFormViewController" para editarlo. Finalmente, la acción `unwindToAthleteTableViewController` maneja la transición de desenrollado desde `AthleteFormViewController` y actualiza la lista de atletas en consecuencia.

El tercer fragmento de código define la clase `AthleteFormViewController`, que se utiliza para editar o agregar atletas. Esta vista contiene campos de texto para ingresar información del atleta, incluido el nombre, la edad, la liga y el equipo. La función `updateView` actualiza estos campos de texto con información del atleta si se proporciona un atleta. La acción "guardar" guarda los cambios o crea un nuevo atleta con la información ingresada en los campos de texto.

En resumen, esta aplicación de iOS consta de dos controladores de vista: `AthleteTableViewController`, que muestra una lista de atletas en una vista de tabla, y `AthleteFormViewController`, que permite agregar o editar atletas. La estructura "Atleta" representa la información del atleta y se utilizan métodos y acciones para interactuar con la vista de tabla y el formulario de edición. El flujo de trabajo implica agregar, editar y guardar información del atleta en una aplicación de iOS.
