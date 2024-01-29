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


### `BasicCollectionView`

In this lesson, I learned about my first API that uses generics: `UICollectionViewDiffableDataSource`. I understood how it can reduce the work required to provide data to a collection view by offering standard features, such as animation of changes, automatically.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/b68afb0e-04ec-453e-a29c-d6181852cd69

