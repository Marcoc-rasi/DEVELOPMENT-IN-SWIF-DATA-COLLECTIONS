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

