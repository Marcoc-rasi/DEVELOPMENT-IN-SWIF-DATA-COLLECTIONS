# `Dynamic Data`

Working with large data sets has taught me that as a developer, it is crucial to provide an efficient way to navigate content. A common practice is to implement a search or filter function to reduce the number of results. Additionally, managing an application's data source can become cumbersome, especially with larger data sets. The Fuzzy Data Source API emerges to address these issues. With a relatively small amount of code, I can direct the data source to (almost) manage itself and control its presentation in a table or collection view.

## `What I Learned`

- Use `UISearchController`
- Demonstrate and describe `UICollectionViewDiffableDataSource`


## `Vocabulary`
- `Diffable Data Source`: A data source that uses snapshots to represent the current state of data, facilitating updates in a view.
- `Search Controller`: A component that manages the search bar and search results in a user interface.
- `Snapshot`: An immutable representation of the current state of data in a diffable data source.

### `iTunesSearch`

In this lab, I applied my new knowledge of collection views, search controllers, and fuzzy data sources to update the iTunes Search solution (Part 3). I started with a refactored version of the solution, available in the resources folder. The solution has been enhanced to use a custom view controller, allowing me to switch between the views of two view controllers. (Standard UIKit container view controllers include UINavigationController and UITabBarController.) It has also been updated to use a search controller instead of a search bar.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/72b160a8-931e-4277-bc98-bbe5af678187

The code presents a set of classes and structures designed for implementing an iOS application for searching and displaying items from a store, possibly linked to the iTunes store. Several key components in this code stand out, all contributing to the overall functionality of the application.

Firstly, the `StoreItemListTableViewController` class is defined, inheriting from `UITableViewController`. This class handles the logic related to displaying a list of items in a table. The `tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)` method is used to manage the selection of a row in the table and to deselect it with animation.

The `StoreItemController` class is crucial in obtaining data and managing images for store items. It contains a set of asynchronous methods to interact with a web API and retrieve information, as well as images associated with store items. Custom errors are defined in the `StoreItemError` enumeration to handle situations where items cannot be found or image information is missing.

In the code, the `UISearchResultsUpdating` protocol is used, and the `StoreItemContainerViewController` class is defined. This class, inheriting from `UIViewController`, serves as the main controller that manages the user interface for searching and displaying store items. Within the class, views are configured, including a table view and a collection view, along with a search controller (`UISearchController`) that allows users to search for items in the store.

Data sources (`tableViewDataSource` and `collectionViewDataSource`) are defined for the table view and the collection view, respectively, and are kept in sync with updated data. Asynchronous tasks for loading images and canceling ongoing tasks are managed, ensuring efficient application performance.

The `StoreItem` class is a structure that represents a store item and is used to decode item information obtained through a network request. The use of `Codable` allows for mapping JSON keys to structure properties, and a custom initializer is provided to handle cases where not all fields are present in the JSON data.

The `SearchResponse` structure is used to represent the response from a search, which is an array of store items. Both the `StoreItem` and `SearchResponse` structures are crucial for processing data related to store items in the application.

Finally, the `ItemTableViewCell` and `ItemCollectionViewCell` classes are defined, which are custom cells used to display store item information in a table view and a collection view, respectively. Both classes inherit from standard cells and conform to the `ItemDisplaying` protocol. The protocol defines properties used to display item information, such as the title, details, and the image.

Within the extensions of these classes, the `configure(for item: StoreItem, storeItemController: StoreItemController) async` method is implemented, which is responsible for configuring the cell with item information and managing the asynchronous downloading of images. This method is essential for efficiently displaying data in custom cells.

Together, these classes and structures form the foundation of an application that allows users to search and view store items, with the ability to load images and efficiently manage asynchronous tasks. The code provides a solid structure for implementing this functionality, covering data management through to user interface presentation.

### `BasicCollectionView`

In this lesson, I learned about my first API that uses generics: `UICollectionViewDiffableDataSource`. I understood how it can reduce the work required to provide data to a collection view by offering standard features, such as animation of changes, automatically.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b68afb0e-04ec-453e-a29c-d6181852cd69

In the provided code snippet, an implementation of a collection view (UICollectionView) in an iOS development environment using the Swift language is presented. This collection view displays a list of United States states and provides real-time search functionality.

The United States states are defined as a constant array named `items`, which contains all the state names. This is relevant as the data is based on this array and is used for both searching and displaying within the collection view.

A class named `BasicCollectionViewController` has been created, which inherits from `UICollectionViewController` and adopts the `UISearchResultsUpdating` protocol. In this class, key functionalities are implemented, such as search bar management and data presentation within the collection view.

The search bar is managed by a search controller named `searchController`, configured not to obscure the background during result presentation. This is crucial to ensure that search results are visible to the user. Furthermore, the option to keep the search bar visible even when the user scrolls the collection view is enabled (`navigationItem.hidesSearchBarWhenScrolling = false`).

The `createDataSource` method is responsible for setting up a `dataSource` object of type `UICollectionViewDiffableDataSource` to manage the data in the collection view. This is relevant for presenting the elements within the collection view.

The `updateSearchResults` function is executed whenever a search is performed. Search results are filtered based on the text entered into the search bar and applied to the collection view. This update is done with animation to provide a smooth user experience.

The layout of the collection view is defined in the `generateLayout` method. In this layout, the size of items, spacing between them, and other visual aspects are defined. This layout adapts to the content of the collection view and ensures that items are displayed appropriately.

Finally, an additional class named `BasicCollectionViewCell` is defined, which inherits from `UICollectionViewCell`. This class contains a label (`label`) used to display the text of the states in each cell of the collection view. The `label` property is annotated with the `@IBOutlet` attribute, allowing it to be connected to a label in the user interface. This is crucial for customizing the appearance of cells in the collection view.

In summary, the provided code creates an iOS collection view that displays a list of United States states and allows users to search for specific states. The implementation is based on search bar configuration, data management, and customization of the collection view cells. Data is stored in a constant array, filtered based on the search, and efficiently presented within the collection view.
