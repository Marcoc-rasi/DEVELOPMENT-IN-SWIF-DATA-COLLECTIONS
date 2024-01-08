# Anatomy of the Application and Lifecycle

In a previous unit, you learned about the different stages of the view controller lifecycle. The lifecycle of an application works very similarly: the application opens, runs, goes into the background, and then closes. In this lesson, you will learn more about the different states of the lifecycle and the delegate hooks to execute logic as the application progresses through each state.

## What You Will Learn
- How to execute code at different stages of the application lifecycle.

## Vocabulary
- `active`: State in which the application is currently in the foreground and running.
- `application delegate`: Object that handles events in the application lifecycle.
- `application state`: Current condition of the application, such as active, in the background, etc.
- `background`: State in which the application is running but not visible to the user.
- `foreground`: State in which the application is currently visible to the user.
- `scene delegate`: Object that handles specific events of the scene in the application.


## Videos Apps

### 1 - Tables and Persistance

##### AppEventCount-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/92fb72f0-f97e-4810-a2ff-e6cea83d9921

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

##### AppLifeCycle-Marcocrasi

Summary



https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/53214bb5-19b9-468a-a4c7-255d8bb4959d

The code relates to the management of the lifecycle of an iOS application. It consists of two main parts: the `SceneDelegate` and the `AppDelegate`. Both are crucial for controlling events and specific actions during the application's lifecycle.

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
