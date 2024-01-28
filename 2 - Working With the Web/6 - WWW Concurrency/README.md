# Working with the Web: Concurrency

In this lesson, I learned how to update a user interface with new data. I have understood the best practices for including networking code in an application and for dispatching interface updates to the main queue.

## What I Learned

- Demonstrate best practices for architecting networking code in an application
- Describe the concurrency model of an iOS app
- Demonstrate how to dispatch user interface updates to the main queue
- Demonstrate how to display a list of model objects from a network request in a list view

## Vocabulary
- `App Transport Security (ATS)`: Security system that protects network communications in an iOS app.
- `background queue`: A queue where tasks run in the background.
- `concurrency`: Simultaneous execution of multiple tasks.
- `DispatchQueue`: A class that manages the execution of tasks on a specific thread.
- `Grand Central Dispatch (GCD)`: Parallel programming system on iOS and macOS.
- `main queue`: A queue where code related to the user interface runs.
- `network activity indicator`: Visual representation of the network activity state in an app.

## `6 - WWW Concurrency`

### `iTunesSearch`

The goal of this lab is to integrate iTunes search network requests into a real application and apply the lessons learned about concurrency to the project. You will create an application that will allow the user to search for different types of media and view the results in a table view. To improve table view performance, you'll also learn how to update the URL cache size to temporarily store images.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a61ee110-3164-4442-968e-c0da4c3be1f7

The code architecture comprises an iOS application designed to interact with the iTunes API, thereby obtaining data related to the categories offered by this platform. At the core of this application, the `StoreItemController` class is defined to manage communication with iTunes web services for searching store items and loading images associated with these items.

Two key methods in this class are `fetchItems(matching query:)` and `fetchImage(from url:)`. The former is used to perform searches in the online store by establishing communication with the iTunes API through HTTP requests. The latter method, `fetchImage`, is employed to load images from URLs provided by the iTunes API. Both methods are designed to handle specific errors using an enumeration called `StoreItemError`. Types of errors that can be managed include the absence of found items and missing image data. This error handling approach provides precise control over potential issues that may arise during interaction with iTunes web services.

The `StoreItem` structure represents individual store items related to iTunes categories. This structure conforms to the `Codable` protocol, enabling it to be encoded and decoded to and from JSON format. The structure includes properties such as name, artist, type, description, and the item's image URL. Its flexibility is evident in its ability to adapt to various data formats provided by the iTunes API.

To manage the encoding and decoding of `StoreItem` objects from JSON, the `CodingKeys` and `AdditionalKeys` enumerations are used. These enumerations allow mapping Swift properties to specific keys present in the JSON returned by the iTunes API. The custom `init(from decoder:)` method is responsible for decoding `StoreItem` objects from a `Decoder` object, ensuring that the item's information is accurately extracted, even when the description of the item is located in different locations within the JSON provided by the iTunes API. The `StoreItem` structure serves as an in-memory representation of store items, and its versatility facilitates the handling of various data formats from the iTunes API.

The `SearchResponse` structure acts as a container for the results of searches conducted through the iTunes API. Within it, there is an array of `StoreItem` objects representing the items found during a search. This structure plays a crucial role in deserializing the JSON response obtained from the iTunes API and converting this data into Swift objects that can be manipulated by the application.

The `ItemCell` class is responsible for customizing the appearance and content of cells in a table view. This customization is achieved by implementing the `updateConfiguration(using state:)` method, which is automatically called to update the cell's configuration based on its state and the data it should display. Cell properties such as `name`, `artist`, and `artworkImage` are configured to trigger configuration updates whenever their values change. Within the `updateConfiguration` method, a configuration is created based on the cell's default configuration. Subsequently, the text and image values of this configuration are set using data provided by the cell's properties. This allows the cell to efficiently display the name, artist, and an image related to the store item. In case an image is not provided, a default image is displayed, along with its symbol and tint configuration.

In summary, the code in question consists of various components aimed at interacting with the iTunes API. These components include a table view controller (`StoreItemListTableViewController`), a store item controller (`StoreItemController`), data structures for representing items and search responses (`StoreItem` and `SearchResponse`), and a custom cell (`ItemCell`) designed to display information related to iTunes categories in a table view. The modularity and adaptability of this architecture enable effective interaction with web services, data management, and the presentation of store items in an iOS application, offering flexible and efficient organization.

### `SpacePhoto`

An app that uses NASA's Astronomical Photograph of the Day (APOD) API to obtain data and display the information along with the image in the application itself.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a769780c-085e-4b5c-a3f1-56208cf336d6

The provided code consists of three related components: `ViewController`, `PhotoInfoController`, and `PhotoInfo`. These components work together to retrieve information and an image of a space photo from NASA's API and display it in an iOS application. Here's a detailed technical explanation of how these parts function and relate to each other.

First and foremost, the `PhotoInfoController` class is responsible for interacting with NASA's API. This class implements two asynchronous functions for fetching information and an image of the space photo. These functions handle errors and use the `async` annotation to indicate they are asynchronous and can await the completion of network operations.

The `fetchPhotoInfo` function constructs a URL for the request to NASA's API. It then makes an asynchronous HTTP request using `URLSession` to fetch JSON data containing information about the space photo. It ensures the response is valid by checking the HTTP status code. It proceeds to decode the JSON data into an instance of the `PhotoInfo` structure using `JSONDecoder`.

The `fetchImage(from url: URL)` function is used to retrieve the image associated with the space photo. Similar to `fetchPhotoInfo`, it makes an asynchronous HTTP request to get image data from the provided URL. It once again verifies the response, and if it's valid, it creates a `UIImage` instance from the image data.

The `PhotoInfo` class is a data model used to represent information about a space photo. It has properties for storing the title, description, image URL, and copyright information for the photo. It is implemented with conformity to the `Codable` protocol, allowing it to be encoded and decoded to JSON or plist formats. Additionally, an enum named `CodingKeys` is used to establish custom mappings between property names in the structure and keys in NASA's API JSON.

The `ViewController` class serves as the main view controller of the application. In the `viewDidLoad` method, initial UI setup is performed. The `photoInfoController` property is initialized to interact with the API, and asynchronous tasks are initiated to retrieve space photo information and its associated image. The `@MainActor` annotation is used to ensure that UI updates are performed on the main thread.

In case of success, the photo's information and image are updated in the UI using the `updateUI(with photoInfo: PhotoInfo)` method. If an error occurs, the `updateUI(with error: Error)` method is called to handle it and display an error message in the UI.

In summary, this code, in the passive voice, allows the iOS application to interact with NASA's API to obtain information and an image of space photos, and then present this data in the user interface. The `PhotoInfoController` and `PhotoInfo` classes play a critical role in fetching and representing the data, while the `ViewController` class coordinates the interaction and presents the results in the UI. The code employs asynchronous programming and error handling to ensure smooth operation and a responsive user experience.
