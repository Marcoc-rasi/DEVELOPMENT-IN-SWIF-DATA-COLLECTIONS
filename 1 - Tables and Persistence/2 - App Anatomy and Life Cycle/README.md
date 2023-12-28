# Anatomy of the Application and Lifecycle

In a previous unit, you learned about the different stages of the view controller lifecycle. The lifecycle of an application works very similarly: the application opens, runs, goes into the background, and then closes. In this lesson, you will learn more about the different states of the lifecycle and the delegate hooks to execute logic as the application progresses through each state.

## What You Will Learn
- How to execute code at different stages of the application lifecycle.

## Vocabulary
- `active`: State in which the application is currently in the foreground and running.
- `application delegate`: Object that handles events in the application lifecycle.
- `application state`: Current condition of the application, such as active, in the background, etc.
- `background`: State in which the application is running but not visible to the user.
- `foreground`: State in which the application is currently visible to the user.
- `scene delegate`: Object that handles specific events of the scene in the application.
