# Table Views

iOS runs on powerful devices that can handle sophisticated computing tasks, enabling users to work with large sets of data. As a developer, how can you elegantly display data so that it's efficient to view and manipulate?

Enter `UITableView`, one of the most widely used views in iOS. Table views are perfect for efficiently displaying both large and small amounts of information and for managing dynamic or static lists of data.

In this lesson, I learned why table views are so popular among iOS developers. This lesson focused on dynamic table views; the next lesson on table views will cover static table views.

## What I Learned
- How to use predefined styles of `UITableViewCell` to customize my table views.
- How to provide dynamic data to a table view.
- How to respond to user interaction in a table view.
- How to update table view data.

## Vocabulary
- `accessory view`: Additional element displayed in a table view cell, such as a button or indicator.
- `dequeuing`: Process of storing and reusing table view cells to improve performance.
- `dynamic`: Changing or adapting based on circumstances.
- `index path`: Identifier representing the position of a cell in a table view.
- `readability margin`: Additional space around the content of a cell to improve presentation.
- `reordering control`: Feature that allows the user to change the order of cells in a table view.
- `table view`: Component that displays a list of items in rows and columns.
- `table view cell`: Individual element in a table view that holds data and is displayed in a row.
- `zero-based`: System where numbering starts from zero instead of one.

#### 5 - Table Views

##### Meal Tracker - Marcocrasi

Summary

You will create an application that will display a list of foods grouped into three sections, one for each meal of the day.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/7c0dd144-8529-4008-bd24-9f7aa9157600

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

##### EmojiDictionary

Summary

The application is an implementation of a table view that is used to display a list of emojis and allows operations like deleting and rearranging items in the list.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/01503d52-4ad7-4598-b691-2c7f03e8dc98

The core of the implementation is a class called `EmojiTableViewController` that inherits from `UITableViewController`. In programming terms, "inherits" means that this class inherits properties and methods from the base class `UITableViewController`, which is a pre-defined table view in iOS. This makes it easy to create a custom table view.

Inside this class, an array named `emojis` is declared, containing objects of the `Emoji` structure. In programming, a "structure" is a data type that groups related properties. In this case, `Emoji` is a structure representing an emoji and has four key properties: `symbol`, `name`, `description`, and `usage`. These properties store the emoji's symbol, its name, a description, and its usage, respectively.

The table view is configured in the `viewDidLoad` and `viewWillAppear` methods. In `viewDidLoad`, a "Edit" button is set in the navigation bar, allowing users to edit the list of emojis. Additionally, the `cellLayoutMarginsFollowReadableWidth` property of the table is adjusted to follow the readable content width. This is relevant for right-to-left language design and ensures a proper appearance in different languages.

The table-related methods are necessary to set up and control the table view. The `numberOfSections(in tableView:)` method returns the number of sections in the table, which in this case is 1. "Sections" refer to the division of the table into distinct parts. `tableView(_:numberOfRowsInSection:)` returns the number of rows in section 0, which equals the number of emojis in the array. Each "row" represents an item in the list.

The `tableView(_:cellForRowAt:)` method is crucial for configuring each cell in the table. In this method, four key steps are followed:
1. **Dequeue cell:** This refers to obtaining a cell from the reuse queue, which is an efficient technique to manage cells in the table view.
2. **Fetch model object:** The corresponding emoji is retrieved from the `emojis` array based on the row index.
3. **Configure cell:** The cell is configured with emoji information, including the symbol and description.
4. **Return cell:** Finally, the configured cell is returned.

The `tableView(_:didSelectRowAt:)` method is called when a cell is tapped and displays the symbol of the selected emoji along with its index in the list. This method enables user interaction with the emojis.

Furthermore, methods for editing the table are provided, such as `tableView(_:commit:forRowAt:)` for deleting emojis from the list and `tableView(_:moveRowAt:to:)` for rearranging emojis using drag-and-drop gestures. These methods are essential to provide editing functionality in the table view.

In summary, this code is an implementation of a table view in iOS that displays a list of emojis, allowing for editing and rearranging. The `Emoji` structure is used to organize information for each emoji. The detailed technical explanation provided here covers fundamental aspects of the implementation, including class inheritance, the use of structures to model data, and the configuration of the table view in an iOS application.
