### `Rastreador de comidas - Marcocrasi`

Crearás una aplicación que mostrará una lista de alimentos agrupados en tres secciones, una para cada comida del día.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/2b1daa39-1a24-49ad-8a9f-b88daf4ccf65

La aplicación consta de tres partes esenciales: la estructura `Meal`, la estructura `Food` y la clase `FoodTableViewController`.

La estructura "Comida" se utiliza para modelar información sobre las comidas. Cada instancia de "Meal" tiene dos propiedades cruciales:
- `nombre`: esta propiedad almacena el nombre de la comida, como "Desayuno", "Almuerzo" o "Cena".
- `food`: Esta propiedad es un conjunto de elementos del tipo `Food`, que representan los alimentos que forman parte de esa comida.

La estructura "Alimentos" se utiliza para modelar información sobre alimentos individuales. Cada instancia de "Comida" tiene dos propiedades clave:
- `name`: Almacena el nombre de la comida, por ejemplo, “Waffles” o “Avocado Toast”.
- `descripción`: almacena una descripción detallada de la comida, como "Una pequeña pila de panqueques de suero de leche puede ser una delicia dulce y saciante para disfrutar en cualquier momento del día".

La clase `FoodTableViewController` es un controlador de vista que hereda de `UITableViewController`. Se encarga de mostrar información sobre comidas y alimentos en una vista de tabla. El controlador se inicializa con una propiedad llamada "meals", que contiene una matriz de instancias de "Meal" que representan el desayuno, el almuerzo y la cena. Cada comida tiene un nombre y una lista de alimentos asociados.

El ciclo de vida del controlador de vista comienza con el método `viewDidLoad`, que se utiliza para cualquier configuración inicial. Posteriormente se implementan varios métodos del protocolo `UITableViewDataSource` para gestionar la vista de tabla:
- `numberOfSections(in tableView:)` devuelve el número de secciones en la vista de tabla, que coincide con el número de comidas.
- `tableView(_:numberOfRowsInSection:)` devuelve el número de filas de una sección, equivalente al número de alimentos de una comida específica.
- `tableView(_:cellForRowAt:)` configura cada celda de la vista de tabla con el nombre y descripción del alimento correspondiente.
- `tableView(_:titleForHeaderInSection:)` proporciona el título de cada sección en la vista de tabla, que es el nombre de la comida.

En resumen, este código representa una aplicación que permite realizar un seguimiento de las comidas y sus alimentos asociados. Las estructuras `Meal` y `Food` se utilizan para organizar la información, y la clase `FoodTableViewController` administra la interfaz de usuario para mostrar los datos en una vista de tabla.
