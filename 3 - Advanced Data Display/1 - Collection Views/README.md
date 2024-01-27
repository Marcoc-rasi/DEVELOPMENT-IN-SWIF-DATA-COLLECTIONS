# Collection Views

In this lesson, I learned how to organize data in a grid using the basic building blocks for collection views and a simple compositional layout.

## What I Learned

- Identify apps or components within apps that may have been implemented with a collection view
- Describe proper use cases for displaying data in collection views
- Provide data to a collection view
- Create prototype cells in Interface Builder
- Use a basic compositional layout
- Describe when to use simple or complex compositional layouts


## Vocabulary
- `collection view`: A UI component that organizes and displays content in a grid.
- `collection view cell`: An individual element in a collection view that displays specific information.
- `collection view layout`: A layout that defines the appearance and organization of cells in a collection view.
- `compositional layout`: A design approach that uses modular building blocks to create flexible and reusable layouts.
- `flow layout`: A type of collection view layout that organizes cells in a linear sequence.

#### 1 - Collection Views#####

##### EmojiDictionary

In this lab, you will apply what you learned in a previous project on table views: EmojiDictionary. This time, you'll implement it using a collection view instead of a table view.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c7f8d0e-dc5e-48d4-a84f-30aa9a830c2d

The provided code, spanning multiple interconnected parts, creates an iOS emoji dictionary application. First and foremost, there is the `Emoji` struct, marked as "Codable," to represent an emoji. This struct stores four essential attributes: `symbol`, `name`, `description`, and `usage.` Conforming to "Codable" allows for easy encoding and decoding of emojis in JSON format, simplifying their storage and transmission in an iOS application.

The `EmojiCollectionViewController` class, derived from `UICollectionViewController`, controls the collection view displaying emojis. By configuring the collection view layout using objects like `NSCollectionLayoutItem`, `NSCollectionLayoutGroup`, and `NSCollectionLayoutSection`, the desired appearance is achieved. Loading of emojis occurs during the initialization of the collection view and updates every time it appears on the screen.

The `EmojiCollectionViewCell` class customizes the collection view cells to present emojis. Its labels, tagged with "@IBOutlet," display the `symbol`, `name`, and `description` of the emoji. The `update(with emoji)` function takes care of correctly reflecting these attributes in the cells.

On the other hand, the `AddEditEmojiTableViewController` class is used to add or edit emojis in a table. Text fields, such as `symbolTextField`, `nameTextField`, `descriptionTextField`, and `usageTextField`, are used to input or modify emoji details. Enabling the save button is controlled through the `updateSaveButtonState` function, which checks the suitability of the entered data, including the presence of a single `emoji` in `symbolTextField.` The `textEditingChanged` function updates the save button state in response to changes in the text fields. Lastly, the class prepares emoji information for subsequent storage or updates in the `prepare(for segue: UIStoryboardSegue, sender: Any?).`

In summary, these code pieces enable users to view, add, and modify emojis in the user interface of an iOS application. The structs and classes are meticulously designed to provide a comprehensive experience in emoji management within the application. Conformance to "Codable" facilitates emoji data manipulation, while the `EmojiCollectionViewController` and `AddEditEmojiTableViewController` classes handle emoji presentation and editing in the collection view and the table, respectively. The `EmojiCollectionViewCell` class customizes the visual appearance of emojis in the collection view, ensuring their proper display. Interaction and application logic are implemented consistently throughout the code, delivering an integrated experience in emoji management within the application.

##### BasicCollectionView

In this lesson, you'll learn how to organize data in a grid using the basic building blocks for collection views and a simple compositional layout.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/94731158-fbe2-4c64-877f-5708b126af51

The provided code is an implementation of a collection view controller in an iOS application. In this code, a `class` named `BasicCollectionViewController` is defined, which inherits from the `UICollectionViewController` class. This `class` is responsible for being managed by a collection view in the user interface.

The collection view is configured to display a list of `state names` in the United States, which are stored in a `private constant` called `items`. This constant contains an array of strings that represents the `state names`.

The `class` `BasicCollectionViewCell` is used to customize the appearance of the cells in the collection view. This `class` is a subclass of `UICollectionViewCell` and contains a property called `label`, which is an instance of the `UILabel` class. The `label` is declared as an `interface outlet` using the `@IBOutlet` attribute, suggesting that it will be connected to a `label` in the user interface file.

In the `viewDidLoad` method of the `BasicCollectionViewController` `class`, the layout of the collection view is configured using a method called `generateLayout`. The layout of the collection view is set using a `UICollectionViewCompositionalLayout`, which specifies the structure of the view, including `items`, `groups`, and `sections`. In this case, a layout with a single column and fixed-height cells is created.

The `numberOfItemsInSection` method is used to determine the `number of items` to be displayed in the collection view. It returns the `number of items` in the `items` array.

The `cellForItemAt` method is responsible for providing the cells to be displayed in the collection view. A reusable cell identified by `reuseIdentifier` is obtained, and the `text` from the `items` array is assigned to the `text` property of the `label` in the custom cell.

In summary, this code creates a collection view that displays a list of `state names` in custom cells. Customization of the cells is achieved through the `BasicCollectionViewCell` `class`, which contains a `label` to display the text. The structure of the collection view is defined in the `generateLayout` method, and a `UICollectionViewCompositionalLayout` is used to apply the layout.
