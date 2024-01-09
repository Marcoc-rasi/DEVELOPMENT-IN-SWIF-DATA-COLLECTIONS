# Model-View-Controller

At this stage of the course, I felt more comfortable with how applications work and how to build basic application functions. I saw how even relatively simple applications depend on many files, structures, and classes. I envisioned how the code for a medium-sized application could span hundreds of files in my project.

In this lesson, I learned how to organize files, structures, and classes in a design pattern called Model-View-Controller, or MVC. MVC will help me design the files in my application, as well as the interactions and relationships between different types and instances. MVC is not a trivial topic. This lesson helped me get started, but I will continue learning and reinforcing my understanding of MVC concepts for a long time. I learned the complexities of implementing proper MVC patterns in my application through example code, building my own applications, and with the guidance of mentors and teachers. I acknowledge that there is never a single correct answer for any architectural decision. There are best practices, but style and personal preference will play a role in how I choose to organize my application projects and relationship models.

## What I Learned
- How to use the Model-View-Controller pattern to design objects and relationships in my application.
- A common way to organize files in my Xcode projects.

## Vocabulary
- `abstraction`: Simplified representation of reality.
- `architecture`: Structure and organization of a system.
- `controller`: Component that manages the logic and data flow between the model and the view.
- `model`: Representation of the data and business rules of the application.
- `Model-View-Controller`: Design pattern that separates the components of the application into three main roles.
- `view`: Component responsible for displaying the user interface and receiving user input.

#### 3 - Model View Controller

Summary

In this lab, you will plan and create an application that uses a proper MVC design. The app will consist of two screens to display the user's favorite athletes, allowing them to add new athletes to the list and edit existing entries.

##### FavoriteAthlete

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/acb1c1c6-ccd8-4798-bff5-cb738b7cd19f

The code consists of three main sections that together form an application for managing athlete information. The first code snippet defines a class called `AthleteTableViewController`, which inherits from `UITableViewController` and is used to display a list of athletes in a table view within an iOS application.

The `AthleteTableViewController` class employs an array called `athletes` to store objects of the `Athlete` structure. This structure, defined in the second code snippet, represents an athlete with properties such as name, age, league, and team. The `Athlete` structure also features a computed property called `description`, which generates a textual description of the athlete.

The application uses three key methods within `AthleteTableViewController` to interact with the table view. The `viewWillAppear` method ensures that the table view is updated before it appears on the screen. Subsequently, the `tableView(_:numberOfRowsInSection:)` and `tableView(_:cellForRowAt:)` methods from the `UITableViewDataSource` protocol are employed to determine the number of rows and how the table view cells should be configured.

Additionally, the `AthleteTableViewController` class contains two actions annotated with `@IBSegueAction`. The first, `addAthlete`, is triggered when adding a new athlete and creates an instance of `AthleteFormViewController` for this purpose. The second, `editAthlete`, is invoked for editing an existing athlete and passes the selected athlete to `AthleteFormViewController` for editing. Finally, the `unwindToAthleteTableViewController` action handles the unwind transition from `AthleteFormViewController` and updates the athlete list accordingly.

The third code snippet defines the `AthleteFormViewController` class, which is used for editing or adding athletes. This view contains text fields for entering athlete information, including name, age, league, and team. The `updateView` function updates these text fields with athlete information if an athlete is provided. The `save` action saves changes or creates a new athlete with the information entered in the text fields.

In summary, this iOS application comprises two view controllers: `AthleteTableViewController`, which displays a list of athletes in a table view, and `AthleteFormViewController`, which allows for adding or editing athletes. The `Athlete` structure represents athlete information, and methods and actions are used to interact with the table view and the editing form. The workflow involves adding, editing, and saving athlete information in an iOS application.
