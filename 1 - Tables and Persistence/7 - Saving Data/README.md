# Saving Data

Earlier in this unit, I learned how the Model-View-Controller (MVC) architecture helps me separate the roles of data, views, and helper objects that communicate between them. In almost all cases, data is extremely important to my users. If they enter information into an app, they expect it to persist, or continue to exist, within the app even after it's closed.

In this lesson, I learned how to persist data using Codable, a protocol I learned about in a previous lesson.

## What I Learned
- How to write and access files in the Documents directory of my app.
- How to serialize model data into a format that can be saved.
- How to deserialize saved data back into model data that can be used in the app.

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

