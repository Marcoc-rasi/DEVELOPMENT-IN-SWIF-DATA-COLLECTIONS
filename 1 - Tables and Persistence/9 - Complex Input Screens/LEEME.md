# Pantallas de Entrada Complejas

Si eres usuario de iOS, sabes que la App Store ofrece muchas aplicaciones excelentes: juegos, aplicaciones de redes sociales y otras aplicaciones que hacen tu vida más fácil o divertida. Pero la App Store también ofrece aplicaciones que ayudan a las empresas a realizar un seguimiento, registrar y supervisar sus actividades diarias. Ya sea registrando inspecciones diarias de seguridad para un sistema de tránsito de la ciudad, pedidos de clientes o huéspedes de hoteles, estas aplicaciones tienen pantallas complejas que permiten a los usuarios ingresar datos para su almacenamiento y gestión.
En esta lección, aprendí cómo combinar múltiples controles y vistas para construir flujos de trabajo de entrada de usuario personalizados y complejos.

## Lo que Aprendí
- Cómo construir formularios personalizados para ingresar datos y crear objetos de modelo.
- Cómo y cuándo usar diferentes controles para recopilar datos.
- Cómo redimensionar dinámicamente las celdas de una vista de tabla.
- Cómo utilizar protocolos personalizados para pasar datos entre controladores de vista.

## Vocabulario
- `AnyObject`: Tipo de protocolo que representa un objeto de cualquier tipo.
- `formateo de fecha`: Proceso de ajuste de la presentación de una fecha según un formato específico.

#### 9 - Pantallas de entrada complejas

##### Lista de empleados

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5b0e0b60-78bf-404c-a4ec-ee5953774556

El fragmento de código proporcionado comprende varios componentes interconectados que forman una aplicación de seguimiento de empleados de iOS. En este sistema, se emplean varios conceptos y patrones de programación esenciales, que se detallarán a continuación.

El código consta de tres controladores de vista Swift que interactúan para administrar y mostrar información sobre los empleados. Estos controladores de vista son:

- `EmployeeTypeTableViewController`: este controlador de vista muestra una lista de tipos de empleados y permite al usuario seleccionar uno. Emplea un protocolo llamado `EmployeeTypeTableViewControllerDelegate` para comunicar el tipo de empleado seleccionado al controlador principal.

- `EmployeeListTableViewController`: Sirve como controlador principal, presentando una lista de empleados en una vista de tabla. Permite editar, eliminar y ver los detalles de los empleados. Utiliza una serie de "Empleados" para mantener los datos de los empleados.

- `EmployeeDetailTableViewController`: este controlador de vista es responsable de mostrar los detalles de un empleado específico, permitiendo al usuario editar y guardar cambios. También proporciona una interfaz para seleccionar el tipo de empleado.

El modelo de datos se representa mediante dos estructuras:

- `EmployeeType`: enumeración que enumera diferentes tipos de empleados, incluidos "exentos", "no exentos" y "a tiempo parcial". Cada caso de enumeración tiene una descripción que se utiliza para mostrar el tipo de empleado en la interfaz de usuario.

- `Employee`: una estructura que modela a un empleado, con propiedades que incluyen el nombre del empleado, la fecha de nacimiento y el tipo de empleado (basado en la enumeración `EmployeeType`).

El flujo de la aplicación se desarrolla de la siguiente manera:

1. El controlador principal, `EmployeeListTableViewController`, muestra una lista de empleados en una vista de tabla.

2. Al tocar la celda de un empleado se activa una acción de navegación para mostrar los detalles de ese empleado en `EmployeeDetailTableViewController`.

3. `EmployeeDetailTableViewController` permite al usuario editar el nombre, la fecha de nacimiento y el tipo de empleado del empleado seleccionado. La selección del tipo de empleado se facilita mediante un botón que muestra una vista de tabla emergente, `EmployeeTypeTableViewController`.

4. Cuando se realizan cambios en `EmployeeDetailTableViewController`, el usuario puede guardar o cancelar las ediciones. Al guardar, los datos de los empleados se actualizan y se notifica al controlador principal a través del delegado.

5. La estructura "EmployeeType" se utiliza para proporcionar una descripción legible por humanos de los tipos de empleados en la interfaz de usuario, mejorando la comprensión del usuario.

6. Para la fecha de nacimiento, se implementa la lógica de fijar una fecha predeterminada en función de la edad promedio de los empleados, como desafío adicional.

En resumen, el código presenta una implementación integral de una aplicación de seguimiento de empleados de iOS que utiliza múltiples controladores de vista y un modelo de datos para administrar y mostrar información sobre los empleados, incluido su nombre, fecha de nacimiento y tipo de empleado. Se emplean protocolos y delegados para comunicar cambios y selecciones entre los controladores de vista.

##### Hotel Manzaná

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f02be49e-5510-4aca-9e40-26f0313dec20

El código proporcionado consiste en un controlador de vista en una aplicación de iOS que permite a los usuarios gestionar reservas de habitaciones en un hotel.

En este controlador de vista puede encontrar múltiples propiedades y conexiones de interfaz de usuario (Outlets) que representan elementos como campos de texto, etiquetas, interruptores, entre otros. Además, las propiedades se definen para rastrear el estado del selector de fechas y el tipo de habitación seleccionada.

Una de las funciones cruciales de este controlador es calcular y mostrar los cargos relacionados con la reserva, como el número de noches, el precio de la habitación, la tarifa de Wi-Fi y el importe total. Este cálculo se realiza en el método `updateChargesSection`.

El controlador de vista también implementa varios métodos `@IBAction` activados en respuesta a las acciones del usuario. Por ejemplo, cuando el usuario cambia el texto en los campos de nombre, ajusta las fechas en los selectores de fechas o modifica el número de adultos o niños, la información correspondiente se actualiza en la interfaz de usuario. Además, se incluye un método para cambiar el estado del interruptor de Wi-Fi.

Para garantizar que el controlador esté configurado correctamente, se utiliza el método `viewDidLoad`, que establece las propiedades iniciales y adapta la interfaz de usuario en función de si se trata de una reserva nueva o existente. También permite al usuario editar reservas existentes, como cambiar el tipo de habitación o las fechas de estadía.

Además, la visibilidad y la altura de las filas de las celdas de la tabla se administran en función del estado de los selectores de fechas, lo que garantiza una experiencia de usuario eficiente.

Cuando un usuario selecciona una fecha, las etiquetas de fecha muestran la selección y, si un selector de fecha está oculto, se vuelve visible para permitir las modificaciones del usuario.

El método `selectRoomType` es responsable de configurar y presentar la vista de selección del tipo de habitación. Esto se logra implementando el protocolo `SelectRoomTypeTableViewControllerDelegate`, que permite notificaciones cuando se selecciona un tipo de habitación.

En resumen, el controlador de vista proporcionado es un componente vital de una aplicación que permite a los usuarios gestionar reservas de habitaciones de hotel. Proporciona una interfaz intuitiva para ingresar y editar información relacionada con reservas, calcular cargos y ajustar fechas de estadía y tipos de habitaciones. Además, facilita la edición de reservas existentes y garantiza una experiencia eficiente y fácil de usar.

