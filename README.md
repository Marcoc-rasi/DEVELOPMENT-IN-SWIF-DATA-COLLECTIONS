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



#### 5 - Table Views

##### Meal Tracker - Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/7c0dd144-8529-4008-bd24-9f7aa9157600

##### EmojiDictionary

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/01503d52-4ad7-4598-b691-2c7f03e8dc98

#### 6 - Intermediate Table Views

#### Favorite boocks

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b267f9aa-94b6-4e28-89d8-dca0aa3f1abd

#### EmojiDictionary

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a4e950dc-f27f-4b22-9768-bcd3f9037eb8

#### 7 - Saving Data

##### EmojiDictionary savin data

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8c820d0a-85f2-4a37-9bbb-ea11a038ad3e

#### 8 - System View Controllers

##### HomeFurniture

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/33b90da3-60cf-44e3-a59b-4701ee8e28d7

##### SystemViewControllers-Marcocrasibaja

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/41e84555-bce7-4d11-90f2-236d68524576

##### Challenge SystemViewControllers-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f60566fe-3dd3-4385-9ed7-ce064221724d

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
