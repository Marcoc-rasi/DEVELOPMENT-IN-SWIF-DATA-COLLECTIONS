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


### `SpacePhoto`

An app that uses NASA's Astronomical Photograph of the Day (APOD) API to obtain data and display the information along with the image in the application itself.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a769780c-085e-4b5c-a3f1-56208cf336d6

