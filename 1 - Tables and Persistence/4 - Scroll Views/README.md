# Scroll Views

In this lesson, I learned how to build a scrolling interface that allows users to see more content than fits on the device's screen. I have also gained knowledge on how to instantiate and provide data to a scroll view.


## What I Learned

- Describe common uses for scroll views
- Demonstrate how to display more information on a single screen using a scroll view
- Describe the relationship of the scroll view to table views and collection views


## Vocabulary
- `bounds`: Rectangular area representing the size and position of a view in relation to its own coordinate system.
- `content inset`: Additional space around the content of a view.
- `content view`: Area containing the actual content within a scroll view.
- `frame`: Rectangular area representing the size and position of a view in relation to its superview's coordinate system.
- `scroll view`: Component that allows displaying content larger than the screen and enables the user to scroll to view different parts of the content.

#### 4 - Scroll Views

##### ISpy-Marcocrasi

Summary

This is an application that displays an image of a cat and allows zooming and panning operations within the enlarged area.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/8517974f-8ca4-47b8-bac0-2f8846ce4a5a

First, we import the UIKit module, which is crucial for iOS app development. Then, we define a class called `ViewController`, acting as the primary controller for the app's view. The class inherits from `UIViewController` and conforms to the `UIScrollViewDelegate` protocol, indicating that we're enabling manipulation of scroll views.

Within this class, we find two essential properties:
- `scrollView`, which is labeled with `@IBOutlet`, suggesting it refers to a `UIScrollView` object in the user interface. This object serves as a viewport to display the cat image and enables scrolling in case the image is larger than the screen.
- `imageView`, another property labeled with `@IBOutlet`, indicating it refers to a `UIImageView` object in the user interface. This is the cat image to be displayed within the scroll view.

When the view is loaded into memory, the `viewDidLoad` method is executed, setting the `delegate` property of the `scrollView` to be this very instance of `ViewController`. This implies that the `ViewController` class will control the behavior of the scroll view.

The `viewDidAppear` method is called when the view is presented on the screen, and here, we invoke `updateZoomFor(size:)`, passing the current view's size as a parameter. This ensures that the image's zoom is appropriately adjusted to the screen size.

The `viewForZooming(in scrollView: UIScrollView)` method is part of the `UIScrollViewDelegate` protocol and determines that the view to be scaled (zoomed) is the cat image.

Finally, the custom method `updateZoomFor` calculates the scale factors necessary to fit the image within the zoom area. The scale factors are determined based on the image's size (`imageView.bounds`) and the current view's size (`view.bounds`). Then, both the `scrollView.minimumZoomScale` and `scrollView.zoomScale` are set to the minimum value of the scale factors, ensuring the image fits correctly within the scroll view.

In summary, this code configures a scroll view that displays an image of a cat, allowing zoom and pan operations within the zoomed area. The logic within the `ViewController` class ensures that the image fits appropriately on the screen and provides a smooth user experience when interacting with the cat image.

##### ScrollingForm-Marcocrasi

Summary

The purpose of this code is to ensure that when the keyboard appears or disappears within the application, the view automatically adjusts to keep the text entry fields visible and accessible.

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9c4d3282-49e5-4938-916f-e6b73c1d9284

Within the `ViewController` class, a property called `scrollView` is declared, representing a `UIScrollView` object. This object is used to create a scrollable view in the user interface.

The `viewDidLoad()` method is executed when the view loads. Here, the initial view setup is performed, including the registration of keyboard-related notifications by calling `registerForKeyboardNotifications()`.

The `registerForKeyboardNotifications()` method is responsible for registering two system notifications: one triggered when the keyboard is shown and another when it is hidden. These notifications are crucial for responding to keyboard-related events.

When the keyboard is shown, the `keyboardWasShown(_:)` method is called. In this method, information about the keyboard, such as its size, is obtained, and this information is used to adjust the content of the `scrollView`. The `contentInset` and `scrollIndicatorInsets` properties of the `scrollView` are modified to ensure that text input fields remain visible.

When the keyboard is about to be hidden, the `keyboardWillBeHidden(_)` method is called. In this case, the `contentInset` and `scrollIndicatorInsets` properties of the `scrollView` are reset to their original state, ensuring that the view returns to its normal position.

In summary, this code is essential for ensuring a seamless user experience in an iOS application. When the keyboard is shown, the view automatically adjusts to prevent the keyboard from covering user interface elements. When the keyboard is hidden, the view returns to its original state. This approach enhances usability by allowing users to interact with text input fields conveniently, without keyboard obstructions. The use of system notifications and manipulation of the `scrollView` are key to achieving this behavior.

##### ScrollingChallengeHorizontal

Summary

An application has been developed to fulfill the challenge of creating a horizontal scroll view that showcases three favorite images. This app features a visually pleasing horizontal scroll view with the user's top three favorite images. Users can easily swipe through these images to enjoy and appreciate the chosen favorites. 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/0f304516-4c40-4e01-a546-606b6ec77faa
