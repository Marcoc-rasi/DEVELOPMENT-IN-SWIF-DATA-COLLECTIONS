### `EmployeeRoster`

The goal of this lab is to create a display that accepts complex user input. A date picker and custom delegate will be used to build an employee registry that keeps track of employee information.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a3b6d49f-fc81-4540-ae30-beaaa6bff082

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
