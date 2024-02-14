### `SystemViewControllers-Marcocrasi`

The application integrates several key functionalities to interact with the device and perform actions such as sharing images, viewing websites, taking photos and sending emails.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/bffc78bf-5e70-47cd-838d-3f031eb785ac

The `ViewController` class implements three protocols: `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`, and `MFMailComposeViewControllerDelegate`. These protocols are essential for interacting effectively with the camera, photo album, and email service.

In the "shareButtonTapped" button action, a "UIActivityViewController" is utilized to allow the user to share an image. The activity controller provides an interface that displays available applications for sharing the image, such as "Messages" or "Email."

The "safariButtonTapped" button launches an "SFSafariViewController" that allows users to view a website, in this case, Apple's website. The "SFSafariViewController" is a view controller that provides a web browsing experience without leaving the app.

The "cameraButtonTapped" button displays a "UIImagePickerController" in the form of an action sheet ("UIAlertController"). This controller enables the user to choose between two image sources: "camera" or "photo library." The code configures the controller according to the choice and presents the camera or photo library interface to the user.

The "imagePickerController" method handles the selection of images from the camera or photo library. The selected image is displayed in the image view ("imageView").

Upon tapping the "emailButtonTapped" button, it checks if the device can send emails using "MFMailComposeViewController." This email composition controller is configured with predefined recipient address, subject, and body. If there is an image in the "imageView," it's attached to the email as an attachment.

The "mailComposeController" method is called when the user has finished composing the email and is responsible for dismissing the mail composition controller.

In summary, this code demonstrates an implementation of a user interface that allows sharing images, opening websites, taking photos, or selecting images from the photo library, and sending emails directly from the app. Specific iOS protocols and controllers, such as "UIActivityViewController," "SFSafariViewController," and "MFMailComposeViewController," are crucial for providing these built-in functionalities effectively.

