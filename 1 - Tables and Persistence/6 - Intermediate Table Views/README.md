# Intermediate Table Views

In this lesson, I've delved into more advanced table view features, such as creating custom cells, enabling table view editing, and working with static table views.

## What I Learned

- Demonstrate how to create a custom table view cell
- Demonstrate how to use table view editing to enable swipe functionality
- Demonstrate how to use a static table view
- Describe use cases for static table views
- Demonstrate how to use table view cell actions

## Vocabulary
- `custom table view cell`: Custom-designed element for a cell in a table view.
- `row action`: Functionality associated with a row in a table view, such as delete or share.
- `static table view`: Type of table view that displays a fixed list of items, typically used for forms or lists that don't change.

#### 6 - Intermediate Table Views

#### Favorite books

Summary

The goal of this lab is to implement intermediate features of the table view in an application that keeps track of your favorite books.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b267f9aa-94b6-4e28-89d8-dca0aa3f1abd

The code provided is a Swift implementation for an iOS application focused on managing books. The `BookTableViewController` class is a subclass of `UITableViewController` and is used to control a table view in the application's user interface. The table view is used to display a list of books, and I am responsible for managing its content and behavior.

Within this class, I declared a property called `books`, which is an array of `Book` objects. This array stores the books that will be displayed in the table view.

I configured standard table view methods such as `numberOfRowsInSection` and `cellForRowAt` to determine how many rows the table view should have and how to display book data in the cells. Additionally, I implemented a `commit editingStyle` method to allow the deletion of books by swiping a cell.

The class also contains methods related to navigation between views. The `prepareForUnwind` method handles the process of saving changes when editing an existing book or adding a new book to the `books` array. The `editBook` method is used to edit an existing book by selecting a row in the table view.

The `BookTableViewCell` class is a subclass of `UITableViewCell` and is used to customize the appearance of cells in the table view, displaying detailed information about a book. Each instance of `BookTableViewCell` contains labels (`UILabels`) to display the book's title, author, genre, and length. The `update(with:)` method is responsible for updating the labels with the relevant book information.

Lastly, the `Book` structure represents a book with properties for the title, author, genre, and length. I also implemented the `CustomStringConvertible` protocol, which allows me to generate a text representation of the book using the `description` property. This property returns a string that includes detailed information about the book, such as the title, author, genre, and length.

In summary, the provided code is a Swift implementation for an iOS book management application. It uses classes and structures to represent books and customize their display in a table view. Table view methods handle data presentation, and the `Book` structure provides a detailed textual description of a book for display. The code also includes logic for editing and navigating between views.

#### EmojiDictionary

Summary

In the app you create a list of emojis with a custom table cell that will add a third larger label aligned to the left edge of the cell to display the emoji.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a4e950dc-f27f-4b22-9768-bcd3f9037eb8

The `EmojiTableViewController` class is responsible for displaying the list of emojis in a table view. This class inherits from `UITableViewController` and contains a property named `emojis` that stores an array of `Emoji` objects. The table view is configured with the information from these objects, including their symbol, name, description, and usage.

The lifecycle of the table view is controlled in the `viewDidLoad` and `viewWillAppear` methods. The former sets the initial appearance of the view, including configuring the edit button and cell height. The latter method is responsible for reloading data in the table view every time it appears.

The `EmojiTableViewCell` class defines the appearance of the table view cells. It contains text labels to display the symbol, name, and description of each emoji. The `update(with emoji: Emoji)` method customizes a cell with the information of a specific emoji.

The `AddEditEmojiTableViewController` class is used to add or edit emojis. This view contains text fields for the symbol, name, description, and usage of the emoji. The save button's state is automatically updated based on the validity of the data entered in these fields. Additionally, the `containsSingleEmoji(_ textField: UITextField)` method checks if the symbol field contains a single emoji.

Upon selecting the save button, the information is saved in an instance of `Emoji`. The preparation of this information is carried out in the `prepare(for segue: UIStoryboardSegue, sender: Any?)` method. Data flow between the edit view and the list view is managed using the segue identifier `saveUnwind`.

In summary, the code provides an iOS application that allows the management of a list of emojis with operations for adding, editing, and deleting. Emojis are represented using the `Emoji` structure and are displayed in a table view. The edit view ensures the integrity of the data before saving it and communicates changes back to the list view. The code follows best practices for iOS app development and leverages the `Codable` protocol for easy serialization of objects in JSON format.
