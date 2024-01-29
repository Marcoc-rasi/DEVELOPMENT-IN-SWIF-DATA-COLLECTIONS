## `Hotel Manzaná`

La aplicación consiste en un controlador de vista en una aplicación de iOS que permite a los usuarios gestionar reservas de habitaciones en un hotel.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/67035da4-6246-4863-a34a-41654675b396

En este controlador de vista puede encontrar múltiples propiedades y conexiones de interfaz de usuario (Outlets) que representan elementos como campos de texto, etiquetas, interruptores, entre otros. Además, las propiedades se definen para rastrear el estado del selector de fechas y el tipo de habitación seleccionada.

Una de las funciones cruciales de este controlador es calcular y mostrar los cargos relacionados con la reserva, como el número de noches, el precio de la habitación, la tarifa de Wi-Fi y el importe total. Este cálculo se realiza en el método `updateChargesSection`.

El controlador de vista también implementa varios métodos `@IBAction` activados en respuesta a las acciones del usuario. Por ejemplo, cuando el usuario cambia el texto en los campos de nombre, ajusta las fechas en los selectores de fechas o modifica el número de adultos o niños, la información correspondiente se actualiza en la interfaz de usuario. Además, se incluye un método para cambiar el estado del interruptor de Wi-Fi.

Para garantizar que el controlador esté configurado correctamente, se utiliza el método `viewDidLoad`, que establece las propiedades iniciales y adapta la interfaz de usuario en función de si se trata de una reserva nueva o existente. También permite al usuario editar reservas existentes, como cambiar el tipo de habitación o las fechas de estadía.

Además, la visibilidad y la altura de las filas de las celdas de la tabla se administran en función del estado de los selectores de fechas, lo que garantiza una experiencia de usuario eficiente.

Cuando un usuario selecciona una fecha, las etiquetas de fecha muestran la selección y, si un selector de fecha está oculto, se vuelve visible para permitir las modificaciones del usuario.

El método `selectRoomType` es responsable de configurar y presentar la vista de selección del tipo de habitación. Esto se logra implementando el protocolo `SelectRoomTypeTableViewControllerDelegate`, que permite notificaciones cuando se selecciona un tipo de habitación.

En resumen, el controlador de vista proporcionado es un componente vital de una aplicación que permite a los usuarios gestionar reservas de habitaciones de hotel. Proporciona una interfaz intuitiva para ingresar y editar información relacionada con reservas, calcular cargos y ajustar fechas de estadía y tipos de habitaciones. Además, facilita la edición de reservas existentes y garantiza una experiencia eficiente y fácil de usar.

