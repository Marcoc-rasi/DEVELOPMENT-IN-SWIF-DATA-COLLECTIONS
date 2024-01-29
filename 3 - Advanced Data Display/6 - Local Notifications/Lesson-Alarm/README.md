### `Alarm`

This project consists of the basic structure of a simple alarm application that allows you to create one alarm at a time. I've implemented logic to create an alarm, get authorization to send notifications, schedule local notifications, and give users the option to snooze their alarm.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/a572abb8-9764-4079-a479-5b8b566bdecc

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

