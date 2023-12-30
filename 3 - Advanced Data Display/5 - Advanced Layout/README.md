# Advanced Compositional Layouts

You have learned that collection views are a flexible tool for displaying data collections in different ways, and you have learned how to create basic lists and grids using compositional layouts. This is a good start, but you can do much more. In this lesson, you will learn how to make the most of the capabilities of compositional layouts to create richer interfaces that provide an excellent user experience.

## What I Learned
- How to create sections with different layouts.
- How to create sections with orthogonal scrolling in a compositional layout.

## Vocabulary
- `anchor`: A reference point used to position elements within a compositional layout.
- `layout environment`: The context in which the layout is being created, which includes information about the size and other attributes of the environment.
- `MARK comment`: A special comment used to divide and organize the source code.
- `orthogonal`: Related to lines or sections perpendicular to each other in a design; in this context, it refers to sections with perpendicular scrolling.

##### iTunesSearch

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/2124db42-8144-4aa0-a9ea-0237a9e1212c

The provided code refers to a set of classes and structures in an iOS application used to display store items in both a table view and a collection view. These classes and structures work together to enable searching and displaying store items based on various search categories. Below is a technical explanation of how this code works and how the different parts are interconnected:

The entry point of the application is a view controller called `StoreItemContainerViewController`. This view controller contains a search bar that allows users to search for items in the store. It also contains two containers, one for a table view and another for a collection view, which are used to display search results.

The code starts by defining an enum called `SearchScope`. This enum represents the different search scopes available in the application, such as "Movies," "Music," "Apps," and "Books." Each scope has a descriptive title and an associated media type. This information is used to filter search results.

Next, the `StoreItem` and `SearchResponse` structures are defined. The `StoreItem` structure represents a store item and includes information like the name, artist, type, description, and image URL. Conforming to the `Codable` protocol facilitates the encoding and decoding of these items to and from JSON. The `SearchResponse` structure is used to represent search responses and contains an array of store items.

In the code, there are two types of custom cells: `ItemTableViewCell` and `ItemCollectionViewCell`. Both cells implement the `ItemDisplaying` protocol, which defines required properties for displaying store items, including an image view, a title label, and a detail label. The cells are used to display items in the table view and collection view.

The implementation of the `ItemDisplaying` protocol is found in an extension that provides a method called `configure(for:storeItemController:)`. This method is responsible for configuring the cell with data from a store item and handles the loading of the item's image using a controller named `StoreItemController`. In case of an error while loading the image, appropriate exceptions are handled.

The `StoreItemController` class is responsible for making search requests and downloading images from store item URLs. It contains asynchronous methods for searching store items and loading images from URLs. Additionally, it defines an enum called `StoreItemError` that represents possible errors related to searching and loading images.

The `StoreItemContainerViewController` is the central point of the application and is responsible for coordinating the search and display of store items. It uses a search controller (`UISearchController`) to enable users to search for items. When changing the search scope, it switches between the table view and the collection view to display the corresponding results.

In summary, this code provides a complete infrastructure for searching and displaying store items in an iOS application. It employs a modular design with custom cells and a central controller to coordinate the search and display of items. Structures and enums are used to represent crucial data and settings, and asynchronous concurrency is leveraged to improve application responsiveness during search and image loading.

##### AppStoreLayout

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/ac8b5e34-d34b-477d-a3a9-22c653da83c8

The code is composed of multiple classes and structures in the Swift programming language, and it uses the iOS UIKit framework to create a user interface. The primary purpose of the code is to define the appearance and behavior of a collection view that displays a list of apps and categories from an app store.

- **`App` and `StoreCategory`**: These two structures define the data models for apps and store categories. Each `App` instance contains information about an app, such as title, subtitle, price, and a possible promotional headline. Apps also have a random color for their visual representation. On the other hand, categories are represented by a name and a random color.

- **`Item`**: The `Item` enumeration is used to represent both apps and categories. This structure allows for storing objects of type `App` or `StoreCategory`. It also provides methods to access specific data for an app or category, as appropriate.

- **`PromotedAppCollectionViewCell` and `StandardAppCollectionViewCell`**: These classes define custom cells for the collection view that display apps. `PromotedAppCollectionViewCell` cells are designed to highlight promoted apps, featuring headers, titles, subtitles, and app images. `StandardAppCollectionViewCell` cells present standard apps with titles, subtitles, and images. Additionally, these cells can display a bottom line to separate the cells in the collection view.

- **`CategoryCollectionViewCell`**: This class defines a custom cell for displaying categories in the collection view. Each cell contains a representative category image, a title, and a possible bottom line. Category images and titles are configured based on the corresponding category.

- **`SectionHeaderView` and `LineView`**: These classes represent header views and horizontal lines used in the collection view. `SectionHeaderView` displays a title and a "See All" button in a horizontal layout. `LineView` displays horizontal gray lines used to separate sections in the collection view.

- **`ViewController`**: The `ViewController` class is the main view controller that manages the collection view and its data. In `ViewController`, the collection view is configured, and custom cells, headers, and lines are registered. Additionally, the layout of the collection view, how sections are organized, and how data is displayed are defined. The collection view's data controller is configured to provide and update data as you scroll through the collection view.

Overall, the code focuses on creating a highly customized collection view that displays apps and categories from an app store. Each user interface component is tailored to its specific function, and custom cells and header/views are used to achieve the desired presentation. The `App` and `StoreCategory` structures are used to store app and category data, and the `Item` enumeration provides a unified way to represent this data in the collection view.
