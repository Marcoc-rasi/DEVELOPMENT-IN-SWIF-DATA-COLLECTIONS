# Working with the Web: Concurrency

In the previous lesson, I learned how to decode JSON into native Swift types and custom model objects, how to write my own completion handler to handle asynchronous code, and a bit about how I might approach adding code to an Xcode project.

In this lesson, I took the data I received from a network request, decoded it, and displayed it in my own application. I also downloaded and set up my first image to display. To achieve all this, I learned about the concurrency system in iOS and how to ensure that code updating the user interface runs in the right place.

## What I Learned
- How to add network code to an Xcode project.
- The basics of how the processor executes code on different queues.
- How to dispatch code updating the user interface to run on the main queue.
- How the shared URL cache system works to store responses from repeated network requests.

## Vocabulary
- `App Transport Security (ATS)`: Security system that protects network communications in an iOS app.
- `background queue`: A queue where tasks run in the background.
- `concurrency`: Simultaneous execution of multiple tasks.
- `DispatchQueue`: A class that manages the execution of tasks on a specific thread.
- `Grand Central Dispatch (GCD)`: Parallel programming system on iOS and macOS.
- `main queue`: A queue where code related to the user interface runs.
- `network activity indicator`: Visual representation of the network activity state in an app.

