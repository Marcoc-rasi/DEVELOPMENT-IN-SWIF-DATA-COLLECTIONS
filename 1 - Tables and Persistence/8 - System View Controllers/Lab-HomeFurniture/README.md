### `HomeFurniture`

The goal of this lab is to use system view controllers in an application that lists rooms and furniture, allowing users to share furniture items with other applications on their device. Be sure to build and run the app on a physical iOS device, rather than the simulator, to have more apps that support image and text sharing.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a124f985-2828-446d-b3fb-63eefa85a2aa

The code consists of three classes within the context of an iOS application written in Swift using the UIKit framework: `Room`, `Furniture`, and `FurnitureDetailViewController`. These classes are designed to model and manage information about rooms, furniture, and furniture details, allowing users to select furniture images and share relevant information. Below are the key functionalities and features of each class.

The `Room` class represents a room and consists of two essential properties:

- `"name"`: Stores the name of the room.
- `"furniture"`: An array of `Furniture` objects representing the collection of furniture items in that room.

The class's initializer allows for the creation of room instances with a specific name and a list of associated furniture. The `Room` class is part of the Swift standard library, and the `Foundation` module is imported to ensure its availability.

The `Furniture` class models an individual piece of furniture and comprises three key attributes:

- `"name"`: Contains the name of the furniture item.
- `"description"`: Stores a detailed description of the furniture.
- `"imageData"` (optional): Represents binary image data associated with the furniture. This property is optional, meaning it can be null, providing flexibility in modeling different pieces of furniture, some with associated images and others without.

The custom initializer for the `Furniture` class allows for the creation of furniture instances with mandatory name and description, and optionally, image data. This provides flexibility when modeling different pieces of furniture, some with images and others without.

The `FurnitureTableViewController` class is a table view controller responsible for displaying information about rooms and their furniture in a user interface. Some key features of this class include:

- The definition of an internal structure named `"PropertyKeys"` that stores a table view cell identifier for later use.
- The `"rooms"` property that stores a list of `Room` instances, each representing a room with its name and associated furniture.
- The implementation of methods from the `UITableViewDataSource` protocol to provide data to the table view, including the number of sections, the number of rows in each section, and the configuration of table cells.
- A `showFurnitureDetail` method that handles displaying furniture details when a cell is selected.

Finally, the `FurnitureDetailViewController` class represents the detail view of a furniture item within the application. This class offers the following key functionalities:

- Allows the user to choose a photo for the furniture, involving the use of a `UIImagePickerController` and the presentation of options to take a photo with the camera or select an image from the device's photo library.
- Provides the ability to share information about the furniture, including its name, description, and photo, through an activity interface (`UIActivityViewController`).

In summary, these classes work together to create an application that enables users to view detailed information about rooms and their furniture, select images for specific furniture items, and share furniture details with other applications. The modularity and flexibility in furniture and room representation facilitate data management in the application.
