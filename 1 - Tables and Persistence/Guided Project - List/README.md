# Guided Project: List

In this unit, I developed key skills by learning how to display lists using `table views`, build screens allowing complex input, and `save data to the device`. In the guided project, I integrated these skills to create an app that manages and stores lists for later retrieval. Through a custom screen, I could `add, modify, and delete items in the list`, adapting the input format based on the item type.

Throughout this process, I acquired three fundamental skills for creating common applications: the ability to list data in a `table view`, the application of the `MVC` design pattern for architecture, and knowledge of how to `persist data between application sessions`. Additionally, I explored app deployment, the construction of `scroll views`, the use of `system view controllers`, and the creation of `complex forms` to gather user information.

Now, with the ability to build `table views`, persist data, and use the `MVC` pattern to design applications, I have the capability to develop more complex apps that store data locally. This knowledge enables me to approach `new frameworks and tools` by consulting the documentation, as each builds upon the skills I have already acquired.

In the next unit, I explored how to enhance my apps by `retrieving and sending information over the Internet`. I am well on my way to becoming an experienced `iOS developer`. Congratulations!

#### Guided Project - List

##### ToDoList-Marcocrasi

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/e4f905f2-c3e1-4f0e-84f8-0d33d73b5e8b

In the code, an iOS application is being developed to manage a list of "To-Do" tasks. This application utilizes several classes and structures that work together to enable users to create, view, edit, and delete tasks.

The central class of the application is `ToDoTableViewController`, which inherits from `UITableViewController`. This class serves as the main view controller and is responsible for displaying the list of "To-Do" tasks in a table view. It also implements the `ToDoCellDelegate` protocol to handle specific events from the task cells.

The "To-Do" tasks in the application are represented using the `ToDo` structure. Each task has properties such as a "unique identifier" (UUID) that ensures its uniqueness, a "title" that describes the task, an "isComplete" indicator that shows whether the task is marked as complete, a "due date," and an optional "notes" field related to the task. The `ToDo` structure also provides methods for saving, loading, and comparing tasks.

The `ToDoTableViewController` view controller uses an array of `ToDo` objects to store the "To-Do" tasks. When loading the view, it checks if there are previously saved tasks. If they exist, it loads them; otherwise, it loads sample tasks.

The table view is populated with the "To-Do" tasks and displays relevant information such as the title and completion status. Users can add new tasks by tapping the "add" button or edit existing tasks by selecting a task from the list. Additionally, they can mark tasks as complete or incomplete by tapping a checkmark button.

When a task is edited, the `ToDoDetailTableViewController` view is opened. This view allows the user to enter or modify the task's title, due date, and notes. It also features a checkmark button to toggle the task's completion status. The `ToDoTableViewController` communicates with this view to update or save tasks using the "unwindToToDoList(segue: UIStoryboardSegue)" method.

The custom cell `ToDoCell` is used to display each task in the table view. The cell contains a label to display the task's title and a checkmark button to change the completion status of the task. When the checkmark button is tapped, it notifies the view controller through the `ToDoCellDelegate` protocol.

In summary, the provided code outlines the structure and workflow of an iOS application for managing a list of "To-Do" tasks. Tasks are represented using the `ToDo` structure, and the application employs view controllers and custom cells to allow users to interact with tasks, modify them, and mark them as complete or incomplete. The application also supports saving and loading tasks to maintain a persistent record of them.
