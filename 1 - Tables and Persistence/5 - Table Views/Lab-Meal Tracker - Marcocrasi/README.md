### `Meal Tracker - Marcocrasi`

You will create an application that will display a list of foods grouped into three sections, one for each meal of the day.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/52ed8d25-6b86-43e0-b67a-e2516bfb8755

The application consists of three essential parts: the `Meal` structure, the `Food` structure, and the `FoodTableViewController` class.

The `Meal` structure is used to model information about meals. Each instance of `Meal` has two crucial properties:
- `name`: This property stores the name of the meal, such as "Breakfast," "Lunch," or "Dinner."
- `food`: This property is an array of elements of the `Food` type, representing the foods that are part of that meal.

The `Food` structure is used to model information about individual foods. Each instance of `Food` has two key properties:
- `name`: It stores the name of the food, for example, "Waffles" or "Avocado Toast."
- `description`: It stores a detailed description of the food, such as "A short stack of buttermilk pancakes can be a sweet and filling treat to enjoy any time of day."

The `FoodTableViewController` class is a view controller that inherits from `UITableViewController`. It is responsible for displaying information about meals and foods in a table view. The controller is initialized with a property called `meals`, which contains an array of `Meal` instances representing breakfast, lunch, and dinner. Each meal has a name and a list of associated foods.

The view controller's lifecycle begins with the `viewDidLoad` method, which is used for any initial setup. Subsequently, several methods from the `UITableViewDataSource` protocol are implemented to manage the table view:
- `numberOfSections(in tableView:)` returns the number of sections in the table view, which matches the number of meals.
- `tableView(_:numberOfRowsInSection:)` returns the number of rows in a section, equivalent to the number of foods in a specific meal.
- `tableView(_:cellForRowAt:)` configures each cell in the table view with the name and description of the corresponding food.
- `tableView(_:titleForHeaderInSection:)` provides the title for each section in the table view, which is the meal name.

In summary, this code represents an application that allows tracking of meals and their associated foods. The `Meal` and `Food` structures are used to organize the information, and the `FoodTableViewController` class manages the user interface to display the data in a table view.
