# Saving Data

In this lesson, I learned how to use the `Codable` protocol to persist data and how to use `PropertyListDecoder` and `PropertyListEncoder` to read and write data to the document directory.

## What I Learned

- Demonstrate how to access the Documents directory
- Demonstrate how to write files to the Documents directory
- Demonstrate how to fetch files from the Documents directory
- Demonstrate how to use the `Codable` protocol to serialize saved data to model data

## Vocabulary
- `archive`: Process of saving data in a format that can be retrieved later.
- `Codable`: Protocol that allows data types to be encoded and decoded for data storage and retrieval.
- `Data`: Data type that stores binary information.
- `Documents directory`: Folder where an app can store files it expects to preserve between runs and backups.
- `persist, persistence`: Maintaining data even after closing and reopening the app.
- `plist`: Property list file format used for storing configuration data in iOS.
- `sandboxing`: Mechanism that restricts an app's access to its own storage space and resources.
- `serialization`: Process of converting data into a format that can be stored or transmitted and then restoring it.
- `unarchive`: Process of retrieving previously archived data for use in the app.

#### 7 - Saving Data

##### EmojiDictionary savin data

Summary

The objective of this lab is to implement the persistence of information between application launches by using the Codable protocol, the FileManager and methods in Data. Persistence will be added to Emoji objects, allowing changes made to the emoji list to persist between app restarts.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8c820d0a-85f2-4a37-9bbb-ea11a038ad3e

**`Emoji` Struct:**
A structure called `Emoji` is defined to represent an emoji. This structure contains properties for the "symbol," "name," "description," and "usage" of an emoji. Additionally, a computed property called `archiveURL` is set to determine the location where emojis will be stored in a Property List (plist) file. A static list named `sampleEmojis` is provided, containing example emojis, which is useful for initializing the application with predefined data. Static methods `saveToFile(emojis: [Emoji])` and `loadFromFile()` are also implemented to save and load emojis from a plist file. This ensures data persistence, allowing emojis to be stored locally and retrieved as needed.

**`EmojiTableViewController` Class:**
A class named `EmojiTableViewController` is defined, inheriting from `UITableViewController`. This class is responsible for managing the table view that displays the list of emojis. In its `viewDidLoad` method, it performs initial configurations, such as assigning an edit button to the navigation bar and loading emojis from storage. Additionally, it implements a series of methods related to table management, such as cell updates, emoji deletion, and item reordering.

**`EmojiTableViewCell` Class:**
The `EmojiTableViewCell` class represents a custom cell for the table. It contains labels to display the symbol, name, and description of the emoji. The `update(with emoji: Emoji)` method is responsible for updating the cell's content with emoji information.

**`AddEditEmojiTableViewController` Class:**
The `AddEditEmojiTableViewController` class manages the addition or editing of emojis. This table view contains text fields to enter the symbol, name, description, and usage of the emoji. The enabling of the save button depends on the validation of the text fields and whether a single emoji has been entered in the symbol field. Additionally, this controller allows the unwind transition to save emojis.

Collectively, this code constructs an iOS application that allows users to add, edit, and view emojis. It uses the `Emoji` structures and custom classes to manage data and the user interface. Data persistence is achieved through Property List files, ensuring emojis remain available even after closing the application. This code is presented efficiently and follows iOS development practices by using `UITableViewController`, `UITextField`, and validation methods for a consistent and functional user experience.
