# DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS

## Videos Apps

### 1 - Tables and Persistance

#### 2 - App Anatomy and Life Cycle

##### AppEventCount-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/76eece6c-6cbe-45d0-b426-8777ea045ae7

The code you've provided is divided into three key parts: the view controller `ViewController`, the `SceneDelegate` class, and the `AppDelegate` class. These parts work together to track and manage events related to the lifecycle of an iOS application. They are used to keep track of events and event counters, enabling the display of relevant information in the user interface.

**`ViewController.swift` - View Controller:**

In `ViewController.swift`, the `ViewController` class is defined, which inherits from `UIViewController` and is responsible for controlling the application's view. This class contains labels (`UILabels`) used to display information about events and event counters related to the application and the scene. These labels include:

- `didFinishLaunchingLabel`: A label that displays the number of times the application has been launched.
- `configurationForConectingLabel`: A label that displays how many times configurations have been made for connecting.

Additionally, variables are defined to track event counters, such as the number of times the scene has connected (`willConectToCount`), the number of times it has become active (`didBecomeActiveCount`), the number of times it has gone inactive (`willresignActiveCount`), the number of times it has entered the foreground (`willEnterForeGroundCount`), and the number of times it has gone to the background (`didEnterBackGroundCount`).

The view controller also contains a reference to `AppDelegate`, which is used to access the counters and data related to the application's lifecycle.

The `updateView` function is responsible for updating the labels in the user interface with the latest information. The labels are filled with details about events and counters, including how many times the application has been launched and how many configurations have been made to connect. The information is obtained from the `AppDelegate` instance and the count variables defined in this class.

**`SceneDelegate.swift` - SceneDelegate Class:**

The `SceneDelegate` class is used to manage events and the lifecycle of the application's scenes. It contains a series of functions that are triggered at different points in a scene's lifecycle, including:

- `scene(_:willConnectTo:options:)`: Triggered when the scene is about to connect. In this function, the `willConectToCount` counter in the view controller is incremented, and a reference to the view controller is obtained. This is done to keep track of how many times the scene has connected.

- Other functions, such as `sceneDidDisconnect`, `sceneDidBecomeActive`, `sceneWillResignActive`, `sceneWillEnterForeground`, and `sceneDidEnterBackground`, are triggered at different moments in the scene's lifecycle. These functions update the counters in the view controller and perform actions related to scene events.

**`AppDelegate.swift` - AppDelegate Class:**

The `AppDelegate` class is responsible for managing events related to the application's lifecycle. It contains properties such as `launchCount` and `configurationForConnectingCount`, which are used to track how many times the application has been launched and how many configurations have been made to connect scenes.

The most relevant functions in this class are:

- `application(_:didFinishLaunchingWithOptions:)`: Triggered when the application has finished launching. In this function, the `launchCount` counter is incremented, allowing the application's launch count to be tracked.

- `application(_:configurationForConnecting:options:)`: Triggered when a new scene session is being configured. Here, the `configurationForConnectingCount` counter is incremented each time a new scene session is configured.

- `application(_:didDiscardSceneSessions:)`: Triggered when the user discards a scene session. This function is used to release resources related to discarded scene sessions that are no longer needed.

In summary, this code is used to track and display information about events and event counters related to the application and scenes in the user interface. The `SceneDelegate` and `AppDelegate` classes are used to manage lifecycle events and counters, while the `ViewController` view controller is responsible for displaying this information in the user interface. This can be useful for debugging, usage tracking, and data collection related to the application's interaction with the user.

##### AppLifeCycle-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/3c6a937c-8daf-4e3c-a10d-45924191abc8

The provided code relates to the management of the lifecycle of an iOS application. It consists of two main parts: the `SceneDelegate` and the `AppDelegate`. Both are crucial for controlling events and specific actions during the application's lifecycle.

The `SceneDelegate` is responsible for handling scenes in the application, including events like connecting a scene, disconnection, state changes between active and inactive, and transitions between foreground and background. Here are the key functions of the `SceneDelegate`:

- In `func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)`, I have the opportunity to configure the scene and attach the `window` to the provided scene. In this case, my code simply prints a "Scene will connect to" message and checks if the scene is an instance of `UIWindowScene`.

- In `func sceneDidDisconnect(_ scene: UIScene)`, I perform the cleanup of resources associated with the scene when it disconnects, such as when my application goes to the background or its session is discarded.

- `func sceneDidBecomeActive(_ scene: UIScene)` is called when the scene transitions from inactive to active, allowing me to resume tasks that were paused.

- In `func sceneWillResignActive(_ scene: UIScene)`, I take actions when the scene is about to transition from active to inactive, which could be due to temporary interruptions like an incoming call.

- `func sceneWillEnterForeground(_ scene: UIScene)` I use when the scene returns to the foreground, allowing me to undo changes made when entering the background.

- Finally, `func sceneDidEnterBackground(_ scene: UIScene)` is called when the scene moves to the background, allowing my application to save data, release shared resources, and store scene-specific information to restore its state.

On the other hand, the `AppDelegate` is responsible for managing launch and termination events of the application:

- `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool` is executed at the application's launch and allows me to customize and configure the application. In this case, my code simply prints "Application did finish launching" and returns `true` to indicate a successful launch.

- `func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions)` is called when a new scene session is created and allows me to select a scene configuration. My code prints "Application configuring a Scene Session" and returns a default scene configuration.

- `func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)` I use when the user discards a scene session. It allows me to release resources specific to the discarded scenes since they won't be reused. My code prints "Application did discard Scene Sessions."

In summary, these two components, `SceneDelegate` and `AppDelegate`, are essential for controlling the lifecycle of an iOS application, enabling specific actions in response to important events such as scene connections, state transitions, and discarded sessions. The use of print statements in each method is a useful tool for debugging and event tracking.

#### 3 - Model View Controller

##### FavoriteAthlete

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acb1c1c6-ccd8-4798-bff5-cb738b7cd19f

The code consists of three main sections that together form an application for managing athlete information. The first code snippet defines a class called `AthleteTableViewController`, which inherits from `UITableViewController` and is used to display a list of athletes in a table view within an iOS application.

The `AthleteTableViewController` class employs an array called `athletes` to store objects of the `Athlete` structure. This structure, defined in the second code snippet, represents an athlete with properties such as name, age, league, and team. The `Athlete` structure also features a computed property called `description`, which generates a textual description of the athlete.

The application uses three key methods within `AthleteTableViewController` to interact with the table view. The `viewWillAppear` method ensures that the table view is updated before it appears on the screen. Subsequently, the `tableView(_:numberOfRowsInSection:)` and `tableView(_:cellForRowAt:)` methods from the `UITableViewDataSource` protocol are employed to determine the number of rows and how the table view cells should be configured.

Additionally, the `AthleteTableViewController` class contains two actions annotated with `@IBSegueAction`. The first, `addAthlete`, is triggered when adding a new athlete and creates an instance of `AthleteFormViewController` for this purpose. The second, `editAthlete`, is invoked for editing an existing athlete and passes the selected athlete to `AthleteFormViewController` for editing. Finally, the `unwindToAthleteTableViewController` action handles the unwind transition from `AthleteFormViewController` and updates the athlete list accordingly.

The third code snippet defines the `AthleteFormViewController` class, which is used for editing or adding athletes. This view contains text fields for entering athlete information, including name, age, league, and team. The `updateView` function updates these text fields with athlete information if an athlete is provided. The `save` action saves changes or creates a new athlete with the information entered in the text fields.

In summary, this iOS application comprises two view controllers: `AthleteTableViewController`, which displays a list of athletes in a table view, and `AthleteFormViewController`, which allows for adding or editing athletes. The `Athlete` structure represents athlete information, and methods and actions are used to interact with the table view and the editing form. The workflow involves adding, editing, and saving athlete information in an iOS application.

#### 4 - Scroll Views

##### ISpy-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8517974f-8ca4-47b8-bac0-2f8846ce4a5a

This code snippet is part of an application that displays an image of a cat and allows zoom and pan operations within the zoomed area.

First, we import the UIKit module, which is crucial for iOS app development. Then, we define a class called `ViewController`, acting as the primary controller for the app's view. The class inherits from `UIViewController` and conforms to the `UIScrollViewDelegate` protocol, indicating that we're enabling manipulation of scroll views.

Within this class, we find two essential properties:
- `scrollView`, which is labeled with `@IBOutlet`, suggesting it refers to a `UIScrollView` object in the user interface. This object serves as a viewport to display the cat image and enables scrolling in case the image is larger than the screen.
- `imageView`, another property labeled with `@IBOutlet`, indicating it refers to a `UIImageView` object in the user interface. This is the cat image to be displayed within the scroll view.

When the view is loaded into memory, the `viewDidLoad` method is executed, setting the `delegate` property of the `scrollView` to be this very instance of `ViewController`. This implies that the `ViewController` class will control the behavior of the scroll view.

The `viewDidAppear` method is called when the view is presented on the screen, and here, we invoke `updateZoomFor(size:)`, passing the current view's size as a parameter. This ensures that the image's zoom is appropriately adjusted to the screen size.

The `viewForZooming(in scrollView: UIScrollView)` method is part of the `UIScrollViewDelegate` protocol and determines that the view to be scaled (zoomed) is the cat image.

Finally, the custom method `updateZoomFor` calculates the scale factors necessary to fit the image within the zoom area. The scale factors are determined based on the image's size (`imageView.bounds`) and the current view's size (`view.bounds`). Then, both the `scrollView.minimumZoomScale` and `scrollView.zoomScale` are set to the minimum value of the scale factors, ensuring the image fits correctly within the scroll view.

In summary, this code configures a scroll view that displays an image of a cat, allowing zoom and pan operations within the zoomed area. The logic within the `ViewController` class ensures that the image fits appropriately on the screen and provides a smooth user experience when interacting with the cat image.

##### ScrollingForm-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c4d3282-49e5-4938-916f-e6b73c1d9284

This Swift code snippet is part of an iOS application and resides within a class named `ViewController`. The purpose of this code is to ensure that, when the keyboard appears or disappears within the application, the view adjusts automatically to keep text input fields visible and accessible.

Within the `ViewController` class, a property called `scrollView` is declared, representing a `UIScrollView` object. This object is used to create a scrollable view in the user interface.

The `viewDidLoad()` method is executed when the view loads. Here, the initial view setup is performed, including the registration of keyboard-related notifications by calling `registerForKeyboardNotifications()`.

The `registerForKeyboardNotifications()` method is responsible for registering two system notifications: one triggered when the keyboard is shown and another when it is hidden. These notifications are crucial for responding to keyboard-related events.

When the keyboard is shown, the `keyboardWasShown(_:)` method is called. In this method, information about the keyboard, such as its size, is obtained, and this information is used to adjust the content of the `scrollView`. The `contentInset` and `scrollIndicatorInsets` properties of the `scrollView` are modified to ensure that text input fields remain visible.

When the keyboard is about to be hidden, the `keyboardWillBeHidden(_)` method is called. In this case, the `contentInset` and `scrollIndicatorInsets` properties of the `scrollView` are reset to their original state, ensuring that the view returns to its normal position.

In summary, this code is essential for ensuring a seamless user experience in an iOS application. When the keyboard is shown, the view automatically adjusts to prevent the keyboard from covering user interface elements. When the keyboard is hidden, the view returns to its original state. This approach enhances usability by allowing users to interact with text input fields conveniently, without keyboard obstructions. The use of system notifications and manipulation of the `scrollView` are key to achieving this behavior.

##### ScrollingChallengeHorizontal

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/0f304516-4c40-4e01-a546-606b6ec77faa

#################################Pendiente###########################################

#### 5 - Table Views

##### Meal Tracker - Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/7c0dd144-8529-4008-bd24-9f7aa9157600

The code I've shared represents an application called `Meal Tracker` that uses Swift and the iOS platform to track meals and the foods within them. The application consists of three essential parts: the `Meal` structure, the `Food` structure, and the `FoodTableViewController` class.

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

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/01503d52-4ad7-4598-b691-2c7f03e8dc98

Certainly, I'll provide the explanation in English, highlighting important keywords or terms with backticks:

The code is an implementation of a table view is used to display a list of emojis and allows operations like deleting and rearranging items in the list.

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

#### 6 - Intermediate Table Views

#### Favorite books

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b267f9aa-94b6-4e28-89d8-dca0aa3f1abd

The code provided is a Swift implementation for an iOS application focused on managing books. The `BookTableViewController` class is a subclass of `UITableViewController` and is used to control a table view in the application's user interface. The table view is used to display a list of books, and I am responsible for managing its content and behavior.

Within this class, I declared a property called `books`, which is an array of `Book` objects. This array stores the books that will be displayed in the table view.

I configured standard table view methods such as `numberOfRowsInSection` and `cellForRowAt` to determine how many rows the table view should have and how to display book data in the cells. Additionally, I implemented a `commit editingStyle` method to allow the deletion of books by swiping a cell.

The class also contains methods related to navigation between views. The `prepareForUnwind` method handles the process of saving changes when editing an existing book or adding a new book to the `books` array. The `editBook` method is used to edit an existing book by selecting a row in the table view.

The `BookTableViewCell` class is a subclass of `UITableViewCell` and is used to customize the appearance of cells in the table view, displaying detailed information about a book. Each instance of `BookTableViewCell` contains labels (`UILabels`) to display the book's title, author, genre, and length. The `update(with:)` method is responsible for updating the labels with the relevant book information.

Lastly, the `Book` structure represents a book with properties for the title, author, genre, and length. I also implemented the `CustomStringConvertible` protocol, which allows me to generate a text representation of the book using the `description` property. This property returns a string that includes detailed information about the book, such as the title, author, genre, and length.

In summary, the provided code is a Swift implementation for an iOS book management application. It uses classes and structures to represent books and customize their display in a table view. Table view methods handle data presentation, and the `Book` structure provides a detailed textual description of a book for display. The code also includes logic for editing and navigating between views.

#### EmojiDictionary

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a4e950dc-f27f-4b22-9768-bcd3f9037eb8

In the provided code, an iOS application is created using the UIKit framework to manage a list of emojis with their corresponding properties. The application consists of several interconnected parts to achieve this functionality. Emoji information is stored in instances of the `Emoji` structure, which conforms to the `Codable` protocol.

The `EmojiTableViewController` class is responsible for displaying the list of emojis in a table view. This class inherits from `UITableViewController` and contains a property named `emojis` that stores an array of `Emoji` objects. The table view is configured with the information from these objects, including their symbol, name, description, and usage.

The lifecycle of the table view is controlled in the `viewDidLoad` and `viewWillAppear` methods. The former sets the initial appearance of the view, including configuring the edit button and cell height. The latter method is responsible for reloading data in the table view every time it appears.

The `EmojiTableViewCell` class defines the appearance of the table view cells. It contains text labels to display the symbol, name, and description of each emoji. The `update(with emoji: Emoji)` method customizes a cell with the information of a specific emoji.

The `AddEditEmojiTableViewController` class is used to add or edit emojis. This view contains text fields for the symbol, name, description, and usage of the emoji. The save button's state is automatically updated based on the validity of the data entered in these fields. Additionally, the `containsSingleEmoji(_ textField: UITextField)` method checks if the symbol field contains a single emoji.

Upon selecting the save button, the information is saved in an instance of `Emoji`. The preparation of this information is carried out in the `prepare(for segue: UIStoryboardSegue, sender: Any?)` method. Data flow between the edit view and the list view is managed using the segue identifier `saveUnwind`.

In summary, the code provides an iOS application that allows the management of a list of emojis with operations for adding, editing, and deleting. Emojis are represented using the `Emoji` structure and are displayed in a table view. The edit view ensures the integrity of the data before saving it and communicates changes back to the list view. The code follows best practices for iOS app development and leverages the `Codable` protocol for easy serialization of objects in JSON format.

#### 7 - Saving Data

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8c820d0a-85f2-4a37-9bbb-ea11a038ad3e

##### EmojiDictionary savin data

In the provided code, a set of classes and structures are defined, forming an iOS application for managing and displaying emojis. A detailed explanation of the key parts of the code is as follows:

**`Emoji` Struct:**
A structure called `Emoji` is defined to represent an emoji. This structure contains properties for the "symbol," "name," "description," and "usage" of an emoji. Additionally, a computed property called `archiveURL` is set to determine the location where emojis will be stored in a Property List (plist) file. A static list named `sampleEmojis` is provided, containing example emojis, which is useful for initializing the application with predefined data. Static methods `saveToFile(emojis: [Emoji])` and `loadFromFile()` are also implemented to save and load emojis from a plist file. This ensures data persistence, allowing emojis to be stored locally and retrieved as needed.

**`EmojiTableViewController` Class:**
A class named `EmojiTableViewController` is defined, inheriting from `UITableViewController`. This class is responsible for managing the table view that displays the list of emojis. In its `viewDidLoad` method, it performs initial configurations, such as assigning an edit button to the navigation bar and loading emojis from storage. Additionally, it implements a series of methods related to table management, such as cell updates, emoji deletion, and item reordering.

**`EmojiTableViewCell` Class:**
The `EmojiTableViewCell` class represents a custom cell for the table. It contains labels to display the symbol, name, and description of the emoji. The `update(with emoji: Emoji)` method is responsible for updating the cell's content with emoji information.

**`AddEditEmojiTableViewController` Class:**
The `AddEditEmojiTableViewController` class manages the addition or editing of emojis. This table view contains text fields to enter the symbol, name, description, and usage of the emoji. The enabling of the save button depends on the validation of the text fields and whether a single emoji has been entered in the symbol field. Additionally, this controller allows the unwind transition to save emojis.

Collectively, this code constructs an iOS application that allows users to add, edit, and view emojis. It uses the `Emoji` structures and custom classes to manage data and the user interface. Data persistence is achieved through Property List files, ensuring emojis remain available even after closing the application. This code is presented efficiently and follows iOS development practices by using `UITableViewController`, `UITextField`, and validation methods for a consistent and functional user experience.

#### 8 - System View Controllers

##### HomeFurniture

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/33b90da3-60cf-44e3-a59b-4701ee8e28d7

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

##### SystemViewControllers-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/41e84555-bce7-4d11-90f2-236d68524576

The presented code is a view controller (`ViewController`) in a Swift-written iOS application that integrates various key functionalities to interact with the device and perform actions such as sharing images, viewing websites, taking photos, and sending emails.

The `ViewController` class implements three protocols: `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, and `MFMailComposeViewControllerDelegate`. These protocols are essential for interacting effectively with the camera, photo album, and email service.

In the "shareButtonTapped" button action, a "UIActivityViewController" is utilized to allow the user to share an image. The activity controller provides an interface that displays available applications for sharing the image, such as "Messages" or "Email."

The "safariButtonTapped" button launches an "SFSafariViewController" that allows users to view a website, in this case, Apple's website. The "SFSafariViewController" is a view controller that provides a web browsing experience without leaving the app.

The "cameraButtonTapped" button displays a "UIImagePickerController" in the form of an action sheet ("UIAlertController"). This controller enables the user to choose between two image sources: "camera" or "photo library." The code configures the controller according to the choice and presents the camera or photo library interface to the user.

The "imagePickerController" method handles the selection of images from the camera or photo library. The selected image is displayed in the image view ("imageView").

Upon tapping the "emailButtonTapped" button, it checks if the device can send emails using "MFMailComposeViewController." This email composition controller is configured with predefined recipient address, subject, and body. If there is an image in the "imageView," it's attached to the email as an attachment.

The "mailComposeController" method is called when the user has finished composing the email and is responsible for dismissing the mail composition controller.

In summary, this code demonstrates an implementation of a user interface that allows sharing images, opening websites, taking photos, or selecting images from the photo library, and sending emails directly from the app. Specific iOS protocols and controllers, such as "UIActivityViewController," "SFSafariViewController," and "MFMailComposeViewController," are crucial for providing these built-in functionalities effectively.

##### Challenge SystemViewControllers-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f60566fe-3dd3-4385-9ed7-ce064221724d

The code is part of an iOS project and utilizes the UIKit framework to create a user interface with various buttons, each performing different actions. These actions include sharing an image, opening a website in Safari, taking a photo with the device's camera, sending an email, and sending a text message.

The code begins by importing two essential modules: `SafariServices` for opening Safari within the app and `MessageUI` for sending emails and text messages.

The primary class in the code is called `ViewController`, which inherits from `UIViewController` and implements several protocols, such as `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, `MFMailComposeViewControllerDelegate`, and `MFMessageComposeViewControllerDelegate`.

Within this class, there is a property called `imageView`, which is associated with an image view in the user interface. This image view is used to display selected or captured images.

The `viewDidLoad` method is the view's initialization method and doesn't perform any additional actions in this case.

There are several `@IBAction` methods that correspond to the various buttons in the user interface:

- The `shareButtonTapped` method is triggered when the "Share" button is pressed. It checks if an image is present in the `imageView`, and if so, it creates an activity controller (`UIActivityViewController`) that allows users to share the image through various apps and services.

- The `safariButtonTapped` method opens the Safari browser within the app and loads Apple's web page when the "Safari" button is pressed.

- When the "Camera" button is pressed, the `cameraButtonTapped` method is called. It displays an alert controller (`UIAlertController`) that allows the user to select the image source (camera or photo library) and then presents an image picker controller (`UIImagePickerController`) for taking photos or selecting images from the photo library.

- The `imagePickerController(_:didFinishPickingMediaWithInfo:)` function is called when an image is selected or taken with the image picker controller. It updates the `imageView` with the selected image and dismisses the image picker controller.

- The `emailButtonTapped` method is triggered when the "Email" button is pressed. It checks if sending emails is possible and, if so, creates an email controller (`MFMailComposeViewController`) that allows users to send a pre-defined email with an attached image, if available.

- The `mailComposeController(_:didFinishWith:result:error:)` function is called when email composition is completed. It closes the email controller.

- The `messageComposeViewController(_:didFinishWith:)` function is invoked when text message composition is completed, closing the text message controller.

- Finally, the "Message" button triggers the `messageButtonTapped` method, which checks if sending text messages is possible. If it is, a text message controller (`MFMessageComposeViewController`) is created to enable users to send a pre-defined text message to specific recipients.

In summary, this code demonstrates how to use various controllers and iOS functionalities to perform actions like sharing images, opening links in Safari, taking photos, sending emails, and sending text messages within an iOS application. These functions are connected to specific user actions through buttons in the user interface.

#### 9 - Complex Input Screens

##### EmployeeRoster

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5b0e0b60-78bf-404c-a4ec-ee5953774556



##### Hotel Manzana

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f02be49e-5510-4aca-9e40-26f0313dec20

#### Guided Project - List

##### ToDoList-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e4f905f2-c3e1-4f0e-84f8-0d33d73b5e8b



### 2 - Working With The Web

#### 3 - Animations

##### Contest

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9a5645bd-ff91-4c91-bf71-bc3f6ddf7379

##### MusicWireframe

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/1b9e7579-1522-42ad-b871-76b810250f4e

#### 6 - WWW Concurrency

##### iTunesSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/922b230d-9343-46b5-9209-46848229f868

##### SpacePhoto

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e2749e6a-cb6a-4145-b3ff-37bf23009413

#### Guided Project - Restaurant

##### OrderApp

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a3f1fae6-9202-4bbb-9f21-0120330334af

##### OrderApp Extension - State Restoration

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/ac873bab-5576-48a7-ae96-808a1099f464


### 3 - Advanced Data Display

#### 1 - Collection Views#####

##### EmojiDictionary

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c7f8d0e-dc5e-48d4-a84f-30aa9a830c2d

##### BasicCollectionView

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/94731158-fbe2-4c64-877f-5708b126af51

#### 2 - Swift Generics

##### Life-formSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8552000d-9ec3-4637-8f35-e64546a4e3ba

#### 3 - Dynamic Data

##### iTunesSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/c0c8e6cc-2217-428a-9aaa-f01512f5123c

##### BasicCollectionView

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/d5060751-01d6-4e4a-ab84-eb78139b11b9

#### 4 - Compositional Layout

#####  Compositional Layout lab

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/089578a6-0465-4fc8-ad0d-20643a5cf940

#### 5 - Advanced Layout

##### iTunesSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/2124db42-8144-4aa0-a9ea-0237a9e1212c

##### AppStoreLayout

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/ac8b5e34-d34b-477d-a3a9-22c653da83c8

#### 6 - Local Notifications

##### BillManager

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5f7e1d12-48d5-433c-90e4-c9fe5686ebfa

##### Alarm

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/16cbfcf3-e26a-4535-8a5a-c2500bf6f75f

#### Guided Project - Habits

##### Habits

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/aef78543-2d64-4ab8-949c-f17b1185007f


























https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b63ca0bd-ce31-4abf-9ad0-91c3573d0be7

### 3 - Advanced Data Display
#### hola
