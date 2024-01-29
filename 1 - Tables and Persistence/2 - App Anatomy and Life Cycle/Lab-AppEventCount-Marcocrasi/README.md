### `AppEventCount-Marcocrasi`

The seven tags are updated with application lifecycle events. Labels refresh correctly when the user triggers different events, such as navigating to the home screen and back, or triggering the app switching interface.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acaba5bc-fab7-4b97-b19c-719de61afe19

The code is divided into three key parts: the view controller `ViewController`, the `SceneDelegate` class, and the `AppDelegate` class. These parts work together to track and manage events related to the lifecycle of an iOS application. They are used to keep track of events and event counters, enabling the display of relevant information in the user interface.

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
