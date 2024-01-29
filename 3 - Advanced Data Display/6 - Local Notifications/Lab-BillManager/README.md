### `BillManager`

I extended the BillManager project in the resources folder. Currently, BillManager allows users to track outstanding invoices and mark them as paid or pending. My task was to add local notifications to remind users of pending payments.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/63f6454c-9645-4fa0-9d8c-5e31c2967886

The provided code pertains to an application called "BillManager" and consists of various sections that work together to manage bills. The application focuses on managing billing details, including reminders and notifications. Here's a continuous explanation of the code, highlighting key aspects:

**Core Data Model**:
- The core logic of the application is found in the `Bill` struct. Each instance of `Bill` represents a bill and contains attributes such as the amount, due date, notification identifier, paid date, payee, and reminder date.

**Functionality Extensions**:
- In the "Bill+Extras.swift" file, a series of extensions for the `Bill` struct are defined, adding additional functionality related to notifications, reminders, and date formatting.

**Scheduling Reminders**:
- The `scheduleReminder(on date: Date, completion: @escaping (Bill) ->())` function allows scheduling a reminder for a bill on a specified date. This is done using the iOS `UserNotifications` framework. It checks if the app has permissions to send notifications before scheduling a reminder.

**Removing Reminders**:
- The `removeReminder()` function deletes any previously scheduled reminder for a bill. This involves removing the pending notification request and clearing the `notificationID` and `remindDate` properties of the bill.

**Notification Permission Management**:
- The `authorizeIfNeeded(completion: @escaping (Bool) -> ())` function checks if the app has permissions to send notifications. Depending on the permission status, it may request authorization from the user and calls the completion handler with a boolean value indicating whether permissions were granted.

**Central Data Model (Database)**:
- The `Database` class serves as a central data store for bills. It allows adding, updating, deleting, and retrieving bills and maintains them in an in-memory dictionary.

**Data Persistence**:
- Bills are stored in a JSON file in the app's document directory. Loading and saving bills are handled through the `loadBills()` and `saveBills(_ bills: [UUID:Bill])` functions, respectively.

**Update Notifications**:
- The `Database` class emits a custom notification named `billUpdatedNotification` when changes to bills occur. This allows other parts of the app to be informed of updates.

**Bill Comparison**:
- Bills can be compared and sorted based on their due date and amount. The implementation is done in the `Bill` extension.

**User Interface (UI)**:
- The code does not include the implementation of the user interface itself, but it assumes the existence of a UI where users can view and edit bills.

Collectively, this code creates an application for managing bills, enabling users to add, edit, and schedule reminders for their bills. Additionally, it takes care of data persistence and the management of bill-related notifications. The extensions provide additional functionality for efficient bill management.
