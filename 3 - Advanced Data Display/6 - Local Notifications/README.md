# Local Notifications

Notifications are an excellent way to interact and connect with your users, even when they are not actively using your application. Using the UserNotifications framework, you can alert users about significant events and give them the opportunity to respond to those events. Notifications can be scheduled locally and also sent remotely. In this lesson, you will learn how to use the UserNotifications framework to schedule and manage local notifications.

## What I Learned
- How to use local notifications to inform or remind users about new or updated information.
- How to schedule and configure local notifications.
- How to create notifications with custom actions.
- How to handle notifications received in the foreground and background.

## Vocabulary
- `actionable notification`: A notification that allows the user to perform actions directly from the notification.
- `badge`: A number or symbol that appears on the app icon to indicate the presence of new notifications or messages.
- `banner`: A common way to present notifications at the top of the screen.
- `local notification`: A notification that is scheduled and displayed on the user's device.
- `notification category`: A classification that allows the user to manage how notifications are presented.
- `remote notification`: A notification sent from a remote server to a device.

##### BillManager

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/5f7e1d12-48d5-433c-90e4-c9fe5686ebfa

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

##### Alarm

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/16cbfcf3-e26a-4535-8a5a-c2500bf6f75f

The provided code focuses on managing alarms and notifications in an iOS application. The central structure involved is named `Alarm`. This structure represents an alarm and encompasses various key functionalities.

**Custom Notification:**
The code defines a custom notification called `alarmUpdated`, which is used to inform other parts of the application about updates in scheduled alarms. The notification is defined as `static let alarmUpdated = Notification.Name("alarmUpdated")`.

**The `Alarm` Structure:**
The `Alarm` structure encapsulates the logic for scheduling and unscheduling alarms, as well as notification authorization. It includes the following important properties and methods:

- `notificationId`: A private property that stores a unique identifier for the notification associated with the alarm.
- `date`: A property that stores the date and time of the alarm.
- `init(date: Date, notificationId: String?)`: An initializer that creates an instance of `Alarm` with a date and a custom notification identifier (generating a UUID if not provided).
- `schedule(completion: @escaping (Bool) -> ())`: This method schedules the alarm's notification. It checks notification authorization, configures the notification content, and schedules the notification with a trigger based on the alarm's date and time.
- `unschedule()`: This method cancels the alarm's notification.
- `authorizeIfNeeded(completion: @escaping (Bool) -> ())`: It checks if the application has permission to send notifications and requests permission if necessary.

**Encoding and Decoding:**
The code extends the `Alarm` structure to be `Codable`, allowing instances of `Alarm` to be encoded and decoded. The extension includes static properties like `notificationCategoryId` and `snoozeActionID` for identifying notification categories and snooze actions.

The `alarmURL` property specifies the location in the file system where information about the scheduled alarm is stored. The `scheduled` property is used to get and set the currently scheduled alarm. When getting it, it attempts to load alarm information from the file system and decode it. When setting it, it encodes the alarm and saves it to the file system or removes the alarm information if set to `nil`. Additionally, the custom notification `alarmUpdated` is posted to inform about updates in the scheduled alarms.

In summary, the provided code is essential for managing alarms, notifications, and notification permissions in an iOS application. The `Alarm` structure handles the scheduling and unscheduling of alarms, while the custom notification `alarmUpdated` facilitates communication regarding changes in scheduled alarms within the application. The `Codable` extension enables the saving and loading of alarm information in the file system.
