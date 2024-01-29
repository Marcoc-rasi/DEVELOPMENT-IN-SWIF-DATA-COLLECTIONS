### `iTunesSearch`

In this update to the iTunes Search Lab solution (Part 4), I've added a new search scope that spans all four existing scopes (Movies, Music, Apps, and Books). The results have been grouped into sections for clear separation.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/971682b2-7332-4b5a-bf93-3ffc52367b01

The provided code refers to a set of classes and structures in an iOS application used to display store items in both a table view and a collection view. These classes and structures work together to enable searching and displaying store items based on various search categories. Below is a technical explanation of how this code works and how the different parts are interconnected:

The entry point of the application is a view controller called `StoreItemContainerViewController`. This view controller contains a search bar that allows users to search for items in the store. It also contains two containers, one for a table view and another for a collection view, which are used to display search results.

The code starts by defining an enum called `SearchScope`. This enum represents the different search scopes available in the application, such as "Movies," "Music," "Apps," and "Books." Each scope has a descriptive title and an associated media type. This information is used to filter search results.

Next, the `StoreItem` and `SearchResponse` structures are defined. The `StoreItem` structure represents a store item and includes information like the name, artist, type, description, and image URL. Conforming to the `Codable` protocol facilitates the encoding and decoding of these items to and from JSON. The `SearchResponse` structure is used to represent search responses and contains an array of store items.

In the code, there are two types of custom cells: `ItemTableViewCell` and `ItemCollectionViewCell`. Both cells implement the `ItemDisplaying` protocol, which defines required properties for displaying store items, including an image view, a title label, and a detail label. The cells are used to display items in the table view and collection view.

The implementation of the `ItemDisplaying` protocol is found in an extension that provides a method called `configure(for:storeItemController:)`. This method is responsible for configuring the cell with data from a store item and handles the loading of the item's image using a controller named `StoreItemController`. In case of an error while loading the image, appropriate exceptions are handled.

The `StoreItemController` class is responsible for making search requests and downloading images from store item URLs. It contains asynchronous methods for searching store items and loading images from URLs. Additionally, it defines an enum called `StoreItemError` that represents possible errors related to searching and loading images.

The `StoreItemContainerViewController` is the central point of the application and is responsible for coordinating the search and display of store items. It uses a search controller (`UISearchController`) to enable users to search for items. When changing the search scope, it switches between the table view and the collection view to display the corresponding results.

In summary, this code provides a complete infrastructure for searching and displaying store items in an iOS application. It employs a modular design with custom cells and a central controller to coordinate the search and display of items. Structures and enums are used to represent crucial data and settings, and asynchronous concurrency is leveraged to improve application responsiveness during search and image loading.
