#DEVELOPMENT-WITH-SWIFT-DATA-COLLECTIONS

# Introduction

I expanded my knowledge and skills in iOS application development, building on what I learned in the `Fundamentals` course. At this stage, I focused on creating more complex and advanced applications. I worked with data coming from a server and explored new `iOS` APIs that allow for much richer application experiences. I learned how to handle `large data sets` in multiple formats, which has significantly expanded my capabilities in developing applications for the `iOS` platform.

## Featured Apps

### `Unit 1 - Tables and Persistence`

#### `Lesson 1.7 - Saving Data`

##### `EmojiDictionary saving data` - Lab

Persistence will be added to Emoji objects, allowing changes made to the emoji list to persist between application restarts.

#### `Lesson 1.8 - System View Controllers`

##### `HomeFurniture` - Lab

The goal of this lab is to use system view controllers in an application that lists rooms and furniture, allowing users to share furniture items with other apps on their device.

##### `SystemViewControllers-Marcocrasi` - Lesson App

The application integrates various key features for interacting with the device and performing actions such as sharing images, viewing websites, taking photos, and sending emails.

##### Challenge `SystemViewControllers-Marcocrasi`  

The app uses the UIKit framework to create a user interface with multiple buttons, each performing different actions. These actions include sharing an image, opening a website in Safari, taking a photo with the device's camera, sending an email, and sending a text message.

#### `Lesson 1.9 - Complex Input Screens`

##### `Hotel Manzana` - Lesson App

The app consists of a view controller in an iOS app that allows users to manage room reservations at a hotel.

#### Guided Project - `ToDoList-Marcocrasi` 

The app allows efficient management of lists. You can add, modify, or delete items through a custom input interface. The app uses table views to display lists, screens designed for complex input, and a storage system to preserve data. It facilitates effective list management, adapting to different types of items with specific controls. In summary, the app offers an optimized experience for list management and storage.

### `Unit 2 - Working With The Web`

#### `Lesson 2.3 - Animations`

##### `MusicWireframe` - Lesson App

The app is a wireframe (a basic outline with no real functionality) of the "Now Playing" screen in the music app.

#### Guided Project - `Restaurant OrderApp` And `State Restoration`

In this project, networking, JSON, concurrency, and closures in Swift were used to build a client app for a web API that provides a list of menu items for a restaurant. It features an interactive menu, allowing customers to view a list of options, add items to an order, and submit the order to the restaurant.

##### OrderApp Extension - State Restoration

In the project extension, you'll add the ability for the OrderApp to remember its state. This means that if the user stops the app and returns later, the app will remember where it was. To achieve this, you'll use a tool called NSUserActivity, which essentially stores key information about the user's current order. This "state" will be saved in a specific part of the app called MenuController. So, when the user reopens the app, it will start exactly where they left off.

### `Unit 3 - Advanced Data Display`

#### `Lesson 3.1 - Collection Views`

##### `EmojiDictionary` - Lab

EmojiDictionary App, this time using a collection view instead of a table view.

#### `Lesson 3.2 - Swift Generics`

##### `Life-formSearch` - Lab

I developed an app that simplifies the search and display of taxonomic information and photos of life forms. The app uses the Encyclopedia of Life's data services API to access and display data about identified life forms.

#### `Lesson 3.4 - Compositional Layout`

#####  `Compositional Layout`- Lab  

In the Emoji Dictionary app, grid and column layouts were added, a function to switch between them was added, and simple section headers were included.

#### `Lesson 3.5 - Advanced Layout`

##### `iTunesSearch` - Lab 

In this update to the iTunes Search Lab solution (Part 4), I added a new search scope that encompasses the four existing scopes (Movies, Music, Apps, and Books). The results have been grouped into sections for clear separation.

##### `AppStoreLayout` - Lesson App

I built a replica of the iOS App Store's home page using a single collection view and a compositional layout with distinct sections.

#### `Lesson 3.6 - Local Notifications`

##### `BillManager` - Lab

BillManager allows users to track pending bills and mark them as paid or pending. Local notifications were added to remind users of pending payments.

##### `Alarm` - Lesson App

This project consists of the basic structure of a simple alarm app that allows creating one alarm at a time. I implemented logic to create an alarm, obtain authorization to send notifications, schedule local notifications, and offer users the option to snooze their alarm.

#### Guided Project - `Habits`

The app addresses various practical aspects. It uses collection views to display datasets, implements generics in Swift, employs differentiable data sources to facilitate dynamic updates, and explores compositional layouts to create advanced interfaces.

The app focuses on being a client for a social network that motivates users to adopt good habits by comparing their rankings with other users. The app makes use of a local server, with a special emphasis on the user interface design. App data is provided in advance, along with a simulation modeling user interaction with the app over time.
