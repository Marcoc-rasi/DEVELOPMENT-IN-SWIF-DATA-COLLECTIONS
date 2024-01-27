# Complex Input Screens

In this lesson, I learned how to use standard user interface controls to build a data entry interface with complex input forms.

## What I Learned

- Demonstrate how to build complex workflows with complex controls
- Demonstrate how to use a custom protocol and delegate for passing data between view controllers
- Demonstrate how to use `UITableViewDelegate` methods to dynamically resize table cells
- Demonstrate how to use a date picker in a table view controller
- Demonstrate how to use a static table view to create a form


## Vocabulary
- `AnyObject`: Protocol type that represents an object of any type.
- `date formatting`: Process of adjusting the presentation of a date according to a specific format.

#### 9 - Complex Input Screens

##### EmployeeRoster

summary

The goal of this lab is to create a display that accepts complex user input. A date picker and custom delegate will be used to build an employee registry that keeps track of employee information.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5b0e0b60-78bf-404c-a4ec-ee5953774556

The provided code snippet comprises several interconnected components forming an iOS employee tracking application. In this system, various essential programming concepts and patterns are employed, which will be detailed below.

The code consists of three Swift view controllers that interact to manage and display information about employees. These view controllers are:

- `EmployeeTypeTableViewController`: This view controller displays a list of employee types and allows the user to select one. It employs a protocol named `EmployeeTypeTableViewControllerDelegate` to communicate the selected employee type back to the main controller.

- `EmployeeListTableViewController`: It serves as the main controller, presenting a list of employees in a table view. It permits editing, deletion, and viewing of employee details. It utilizes an array of `Employee` to maintain employee data.

- `EmployeeDetailTableViewController`: This view controller is responsible for displaying details of a specific employee, allowing the user to edit and save changes. It also provides an interface for selecting the employee type.

The data model is represented using two structures:

- `EmployeeType`: An enum that enumerates different employee types, including "exempt," "non-exempt," and "part-time." Each enum case has a description that is used to display the employee type in the user interface.

- `Employee`: A structure that models an employee, with properties including the employee's name, date of birth, and employee type (based on the `EmployeeType` enum).

The application flow unfolds as follows:

1. The main controller, `EmployeeListTableViewController`, displays a list of employees in a table view.

2. Tapping an employee cell triggers a navigation action to display the details of that employee in `EmployeeDetailTableViewController`.

3. `EmployeeDetailTableViewController` allows the user to edit the name, date of birth, and employee type of the selected employee. Employee type selection is facilitated through a button that displays a popover table view, `EmployeeTypeTableViewController`.

4. When changes are made in `EmployeeDetailTableViewController`, the user can save or cancel edits. When saving, employee data is updated, and the main controller is notified through the delegate.

5. The `EmployeeType` structure is used to provide a human-readable description of employee types in the user interface, enhancing user understanding.

6. For the date of birth, logic is implemented to set a default date based on the average age of employees, as an additional challenge.

In summary, the code presents a comprehensive implementation of an iOS employee tracking application that utilizes multiple view controllers and a data model to manage and display information about employees, including their name, date of birth, and employee type. Protocols and delegates are employed to communicate changes and selections between the view controllers.

##### Hotel Manzana

Summary

The application consists of a view controller in an iOS application that allows users to manage room reservations in a hotel.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f02be49e-5510-4aca-9e40-26f0313dec20

In this view controller, you can find multiple properties and user interface connections (Outlets) representing elements such as text fields, labels, switches, among others. Additionally, properties are defined to track the state of the date picker and the selected room type.

One of the crucial functions of this controller is to calculate and display charges related to the reservation, such as the number of nights, room rate, Wi-Fi fee, and the total amount. This calculation is performed in the `updateChargesSection` method.

The view controller also implements various `@IBAction` methods triggered in response to user actions. For example, when the user changes the text in name fields, adjusts dates in date pickers, or modifies the number of adults or children, the corresponding information is updated in the user interface. Additionally, a method is included to change the state of the Wi-Fi switch.

To ensure the controller is properly configured, the `viewDidLoad` method is used, which sets initial properties and adapts the user interface based on whether it's a new reservation or an existing one. It also allows the user to edit existing reservations, such as changing the room type or stay dates.

Furthermore, visibility and row height of table cells are managed based on the state of date pickers, ensuring an efficient user experience.

When a user selects a date, the date labels display the selection, and if a date picker is hidden, it becomes visible to enable user modifications.

The `selectRoomType` method is responsible for configuring and presenting the room type selection view. This is achieved by implementing the `SelectRoomTypeTableViewControllerDelegate` protocol, allowing notifications when a room type is selected.

In summary, the provided view controller is a vital component of an application that enables users to manage hotel room reservations. It provides an intuitive interface for entering and editing information related to bookings, calculating charges, and adjusting stay dates and room types. Additionally, it facilitates the editing of existing reservations and ensures an efficient and user-friendly experience.
