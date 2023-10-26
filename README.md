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

#### 3 - Model View Controller

##### FavoriteAthlete

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acb1c1c6-ccd8-4798-bff5-cb738b7cd19f

#### 4 - Scroll Views

##### ISpy-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8517974f-8ca4-47b8-bac0-2f8846ce4a5a

##### ScrollingForm-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c4d3282-49e5-4938-916f-e6b73c1d9284

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
