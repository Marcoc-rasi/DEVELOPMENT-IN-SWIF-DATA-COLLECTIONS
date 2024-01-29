### `Challenge SystemViewControllers-Marcocrasi`

The application uses the UIKit framework to create a user interface with several buttons, each of which performs different actions. These actions include sharing an image, opening a website in Safari, taking a photo with the device's camera, sending an email, and sending a text message.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/86994984-3b95-4339-ac6a-de3be5135f19

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
