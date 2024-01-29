### `EmojiDictionary`

In this lab, you will apply what you learned in a previous project on table views: EmojiDictionary. This time, you'll implement it using a collection view instead of a table view.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/d34d45df-3457-4fed-b3b0-5b0e7ca60298

The provided code, spanning multiple interconnected parts, creates an iOS emoji dictionary application. First and foremost, there is the `Emoji` struct, marked as "Codable," to represent an emoji. This struct stores four essential attributes: `symbol`, `name`, `description`, and `usage.` Conforming to "Codable" allows for easy encoding and decoding of emojis in JSON format, simplifying their storage and transmission in an iOS application.

The `EmojiCollectionViewController` class, derived from `UICollectionViewController`, controls the collection view displaying emojis. By configuring the collection view layout using objects like `NSCollectionLayoutItem`, `NSCollectionLayoutGroup`, and `NSCollectionLayoutSection`, the desired appearance is achieved. Loading of emojis occurs during the initialization of the collection view and updates every time it appears on the screen.

The `EmojiCollectionViewCell` class customizes the collection view cells to present emojis. Its labels, tagged with "@IBOutlet," display the `symbol`, `name`, and `description` of the emoji. The `update(with emoji)` function takes care of correctly reflecting these attributes in the cells.

On the other hand, the `AddEditEmojiTableViewController` class is used to add or edit emojis in a table. Text fields, such as `symbolTextField`, `nameTextField`, `descriptionTextField`, and `usageTextField`, are used to input or modify emoji details. Enabling the save button is controlled through the `updateSaveButtonState` function, which checks the suitability of the entered data, including the presence of a single `emoji` in `symbolTextField.` The `textEditingChanged` function updates the save button state in response to changes in the text fields. Lastly, the class prepares emoji information for subsequent storage or updates in the `prepare(for segue: UIStoryboardSegue, sender: Any?).`

In summary, these code pieces enable users to view, add, and modify emojis in the user interface of an iOS application. The structs and classes are meticulously designed to provide a comprehensive experience in emoji management within the application. Conformance to "Codable" facilitates emoji data manipulation, while the `EmojiCollectionViewController` and `AddEditEmojiTableViewController` classes handle emoji presentation and editing in the collection view and the table, respectively. The `EmojiCollectionViewCell` class customizes the visual appearance of emojis in the collection view, ensuring their proper display. Interaction and application logic are implemented consistently throughout the code, delivering an integrated experience in emoji management within the application.
