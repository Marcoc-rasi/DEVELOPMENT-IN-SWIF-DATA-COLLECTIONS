### `Hotel Manzana`

The application consists of a view controller in an iOS application that allows users to manage room reservations in a hotel.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/97ade3b1-0e64-4012-ad70-00139b5aebdc

In this view controller, you can find multiple properties and user interface connections (Outlets) representing elements such as text fields, labels, switches, among others. Additionally, properties are defined to track the state of the date picker and the selected room type.

One of the crucial functions of this controller is to calculate and display charges related to the reservation, such as the number of nights, room rate, Wi-Fi fee, and the total amount. This calculation is performed in the `updateChargesSection` method.

The view controller also implements various `@IBAction` methods triggered in response to user actions. For example, when the user changes the text in name fields, adjusts dates in date pickers, or modifies the number of adults or children, the corresponding information is updated in the user interface. Additionally, a method is included to change the state of the Wi-Fi switch.

To ensure the controller is properly configured, the `viewDidLoad` method is used, which sets initial properties and adapts the user interface based on whether it's a new reservation or an existing one. It also allows the user to edit existing reservations, such as changing the room type or stay dates.

Furthermore, visibility and row height of table cells are managed based on the state of date pickers, ensuring an efficient user experience.

When a user selects a date, the date labels display the selection, and if a date picker is hidden, it becomes visible to enable user modifications.

The `selectRoomType` method is responsible for configuring and presenting the room type selection view. This is achieved by implementing the `SelectRoomTypeTableViewControllerDelegate` protocol, allowing notifications when a room type is selected.

In summary, the provided view controller is a vital component of an application that enables users to manage hotel room reservations. It provides an intuitive interface for entering and editing information related to bookings, calculating charges, and adjusting stay dates and room types. Additionally, it facilitates the editing of existing reservations and ensures an efficient and user-friendly experience.

