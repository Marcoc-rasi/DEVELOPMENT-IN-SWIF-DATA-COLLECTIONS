# System View Controllers

In this lesson, I learned about the most common system view controllers and how to use them to present alerts, send messages, share content, and access the camera roll.

## What I Learned

- Demonstrate how to present an alert controller and respond to user choices
- Demonstrate how to present an activity view controller
- Demonstrate how to present a mail compose view controller
- Demonstrate how to present an image picker view controller and use the selected image
- Demonstrate how to present a Safari view controller to present a website

## Vocabulary
- `activity view controller`: System controller that allows the user to perform activities like sharing content.
- `alert controller`: System controller that displays alert or action messages to the user.
- `handler`: Function that runs in response to a specific action.
- `image picker controller`: System controller that allows the user to select images from the camera or photo library.
- `mail composition view controller`: System controller that allows the user to compose and send emails.
- `system view controller`: Subclasses of `UIViewController` provided by UIKit for specific functions, such as sharing content or displaying alerts.

#### 8 - System View Controllers

##### HomeFurniture

Summary

The goal of this lab is to use system view controllers in an application that lists rooms and furniture, allowing users to share furniture items with other applications on their device. Be sure to build and run the app on a physical iOS device, rather than the simulator, to have more apps that support image and text sharing.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/33b90da3-60cf-44e3-a59b-4701ee8e28d7

The code consists of three classes within the context of an iOS application written in Swift using the UIKit framework: `Room`, `Furniture`, and `FurnitureDetailViewController`. These classes are designed to model and manage information about rooms, furniture, and furniture details, allowing users to select furniture images and share relevant information. Below are the key functionalities and features of each class.

The `Room` class represents a room and consists of two essential properties:

- `"name"`: Stores the name of the room.
- `"furniture"`: An array of `Furniture` objects representing the collection of furniture items in that room.

The class's initializer allows for the creation of room instances with a specific name and a list of associated furniture. The `Room` class is part of the Swift standard library, and the `Foundation` module is imported to ensure its availability.

The `Furniture` class models an individual piece of furniture and comprises three key attributes:

- `"name"`: Contains the name of the furniture item.
- `"description"`: Stores a detailed description of the furniture.
- `"imageData"` (optional): Represents binary image data associated with the furniture. This property is optional, meaning it can be null, providing flexibility in modeling different pieces of furniture, some with associated images and others without.

The custom initializer for the `Furniture` class allows for the creation of furniture instances with mandatory name and description, and optionally, image data. This provides flexibility when modeling different pieces of furniture, some with images and others without.

The `FurnitureTableViewController` class is a table view controller responsible for displaying information about rooms and their furniture in a user interface. Some key features of this class include:

- The definition of an internal structure named `"PropertyKeys"` that stores a table view cell identifier for later use.
- The `"rooms"` property that stores a list of `Room` instances, each representing a room with its name and associated furniture.
- The implementation of methods from the `UITableViewDataSource` protocol to provide data to the table view, including the number of sections, the number of rows in each section, and the configuration of table cells.
- A `showFurnitureDetail` method that handles displaying furniture details when a cell is selected.

Finally, the `FurnitureDetailViewController` class represents the detail view of a furniture item within the application. This class offers the following key functionalities:

- Allows the user to choose a photo for the furniture, involving the use of a `UIImagePickerController` and the presentation of options to take a photo with the camera or select an image from the device's photo library.
- Provides the ability to share information about the furniture, including its name, description, and photo, through an activity interface (`UIActivityViewController`).

In summary, these classes work together to create an application that enables users to view detailed information about rooms and their furniture, select images for specific furniture items, and share furniture details with other applications. The modularity and flexibility in furniture and room representation facilitate data management in the application.

##### SystemViewControllers-Marcocrasi

summary

The application integrates several key functionalities to interact with the device and perform actions such as sharing images, viewing websites, taking photos and sending emails.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/41e84555-bce7-4d11-90f2-236d68524576

The `ViewController` class implements three protocols: `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, and `MFMailComposeViewControllerDelegate`. These protocols are essential for interacting effectively with the camera, photo album, and email service.

In the "shareButtonTapped" button action, a "UIActivityViewController" is utilized to allow the user to share an image. The activity controller provides an interface that displays available applications for sharing the image, such as "Messages" or "Email."

The "safariButtonTapped" button launches an "SFSafariViewController" that allows users to view a website, in this case, Apple's website. The "SFSafariViewController" is a view controller that provides a web browsing experience without leaving the app.

The "cameraButtonTapped" button displays a "UIImagePickerController" in the form of an action sheet ("UIAlertController"). This controller enables the user to choose between two image sources: "camera" or "photo library." The code configures the controller according to the choice and presents the camera or photo library interface to the user.

The "imagePickerController" method handles the selection of images from the camera or photo library. The selected image is displayed in the image view ("imageView").

Upon tapping the "emailButtonTapped" button, it checks if the device can send emails using "MFMailComposeViewController." This email composition controller is configured with predefined recipient address, subject, and body. If there is an image in the "imageView," it's attached to the email as an attachment.

The "mailComposeController" method is called when the user has finished composing the email and is responsible for dismissing the mail composition controller.

In summary, this code demonstrates an implementation of a user interface that allows sharing images, opening websites, taking photos, or selecting images from the photo library, and sending emails directly from the app. Specific iOS protocols and controllers, such as "UIActivityViewController," "SFSafariViewController," and "MFMailComposeViewController," are crucial for providing these built-in functionalities effectively.

##### Challenge SystemViewControllers-Marcocrasi

summary

The application uses the UIKit framework to create a user interface with several buttons, each of which performs different actions. These actions include sharing an image, opening a website in Safari, taking a photo with the device's camera, sending an email, and sending a text message.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/f60566fe-3dd3-4385-9ed7-ce064221724d

The code begins by importing two essential modules: `SafariServices` for opening Safari within the app and `MessageUI` for sending emails and text messages.

The primary class in the code is called `ViewController`, which inherits from `UIViewController` and implements several protocols, such as `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, `MFMailComposeViewControllerDelegate`, and `MFMessageComposeViewControllerDelegate`.

Within this class, there is a property called `imageView`, which is associated with an image view in the user interface. This image view is used to display selected or captured images.

The `viewDidLoad` method is the view's initialization method and doesn't perform any additional actions in this case.

There are several `@IBAction` methods that correspond to the various buttons in the user interface:

- The `shareButtonTapped` method is triggered when the "Share" button is pressed. It checks if an image is present in the `imageView`, and if so, it creates an activity controller (`UIActivityViewController`) that allows users to share the image through various apps and services.

- The `safariButtonTapped` method opens the Safari browser within the app and loads Apple's web page when the "Safari" button is pressed.

- When the "Camera" button is pressed, the `cameraButtonTapped` method is called. It displays an alert controller (`UIAlertController`) that allows the user to select the image source (camera or photo library) and then presents an image picker controller (`UIImagePickerController`) for taking photos or selecting images from the photo library.

- The `imagePickerController(_:didFinishPickingMediaWithInfo:)` function is called when an image is selected or taken with the image picker controller. It updates the `imageView` with the selected image and dismisses the image picker controller.

- The `emailButtonTapped` method is triggered when the "Email" button is pressed. It checks if sending emails is possible and, if so, creates an email controller (`MFMailComposeViewController`) that allows users to send a pre-defined email with an attached image, if available.

- The `mailComposeController(_:didFinishWith:result:error:)` function is called when email composition is completed. It closes the email controller.

- The `messageComposeViewController(_:didFinishWith:)` function is invoked when text message composition is completed, closing the text message controller.

- Finally, the "Message" button triggers the `messageButtonTapped` method, which checks if sending text messages is possible. If it is, a text message controller (`MFMessageComposeViewController`) is created to enable users to send a pre-defined text message to specific recipients.

In summary, this code demonstrates how to use various controllers and iOS functionalities to perform actions like sharing images, opening links in Safari, taking photos, sending emails, and sending text messages within an iOS application. These functions are connected to specific user actions through buttons in the user interface.
