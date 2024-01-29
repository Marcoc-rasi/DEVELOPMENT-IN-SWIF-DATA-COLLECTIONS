### `EmojiDictionary`

In the app you create a list of emojis with a custom table cell that will add a third larger label aligned to the left edge of the cell to display the emoji.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b97eb7c1-1928-4053-b649-d11da7bee860

The `EmojiTableViewController` class is responsible for displaying the list of emojis in a table view. This class inherits from `UITableViewController` and contains a property named `emojis` that stores an array of `Emoji` objects. The table view is configured with the information from these objects, including their symbol, name, description, and usage.

The lifecycle of the table view is controlled in the `viewDidLoad` and `viewWillAppear` methods. The former sets the initial appearance of the view, including configuring the edit button and cell height. The latter method is responsible for reloading data in the table view every time it appears.

The `EmojiTableViewCell` class defines the appearance of the table view cells. It contains text labels to display the symbol, name, and description of each emoji. The `update(with emoji: Emoji)` method customizes a cell with the information of a specific emoji.

The `AddEditEmojiTableViewController` class is used to add or edit emojis. This view contains text fields for the symbol, name, description, and usage of the emoji. The save button's state is automatically updated based on the validity of the data entered in these fields. Additionally, the `containsSingleEmoji(_ textField: UITextField)` method checks if the symbol field contains a single emoji.

Upon selecting the save button, the information is saved in an instance of `Emoji`. The preparation of this information is carried out in the `prepare(for segue: UIStoryboardSegue, sender: Any?)` method. Data flow between the edit view and the list view is managed using the segue identifier `saveUnwind`.

In summary, the code provides an iOS application that allows the management of a list of emojis with operations for adding, editing, and deleting. Emojis are represented using the `Emoji` structure and are displayed in a table view. The edit view ensures the integrity of the data before saving it and communicates changes back to the list view. The code follows best practices for iOS app development and leverages the `Codable` protocol for easy serialization of objects in JSON format.
s
