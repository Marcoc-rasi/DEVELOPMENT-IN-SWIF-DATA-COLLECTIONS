### `Lista de empleados`

El objetivo de este laboratorio es crear una pantalla que acepte una entrada de usuario compleja. Se utilizará un selector de fechas y un delegado personalizado para construir un registro de empleados que lleve un seguimiento de la información de los empleados.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f6af2ee5-438b-41c5-982f-0c403aa22205

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
