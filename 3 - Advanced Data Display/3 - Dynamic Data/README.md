# Dynamic Data

Now that you understand how generics work, you're ready to use them in practice. Many UIKit APIs don't use generics because they were written before Swift became the dominant language in iOS development. Some modern, Swift-exclusive APIs take advantage of generics. They add an additional level of elegance to your code and empower features that would be difficult or impossible otherwise.

In this lesson, you'll learn about your first API that uses generics: `UICollectionViewDiffableDataSource`. You'll learn how it can reduce the work needed to supply data to a collection view, providing you with standard features like change animation for free.

## What I Learned
- How to implement `UISearchController` to provide data filtering features.
- How to update data in a collection view.
- How to create and use diffable data sources.
- How to apply snapshots from diffable data sources to update a collection view.

## Vocabulary
- **Diffable Data Source**: A data source that uses snapshots to represent the current state of data, facilitating updates in a view.
- **Search Controller**: A component that manages the search bar and search results in a user interface.
- **Snapshot**: An immutable representation of the current state of data in a diffable data source.

