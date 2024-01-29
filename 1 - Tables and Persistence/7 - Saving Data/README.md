# Saving Data

In this lesson, I learned how to use the `Codable` protocol to persist data and how to use `PropertyListDecoder` and `PropertyListEncoder` to read and write data to the document directory.

## What I Learned

- Demonstrate how to access the Documents directory
- Demonstrate how to write files to the Documents directory
- Demonstrate how to fetch files from the Documents directory
- Demonstrate how to use the `Codable` protocol to serialize saved data to model data

## Vocabulary
- `archive`: Process of saving data in a format that can be retrieved later.
- `Codable`: Protocol that allows data types to be encoded and decoded for data storage and retrieval.
- `Data`: Data type that stores binary information.
- `Documents directory`: Folder where an app can store files it expects to preserve between runs and backups.
- `persist, persistence`: Maintaining data even after closing and reopening the app.
- `plist`: Property list file format used for storing configuration data in iOS.
- `sandboxing`: Mechanism that restricts an app's access to its own storage space and resources.
- `serialization`: Process of converting data into a format that can be stored or transmitted and then restoring it.
- `unarchive`: Process of retrieving previously archived data for use in the app.

## `7 - Saving Data`

### `EmojiDictionary savin data`

The objective of this lab is to implement the persistence of information between application launches by using the Codable protocol, the FileManager and methods in Data. Persistence will be added to Emoji objects, allowing changes made to the emoji list to persist between app restarts.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/6d81de90-1249-4f7a-9cdd-1bcc8ffbd30f

