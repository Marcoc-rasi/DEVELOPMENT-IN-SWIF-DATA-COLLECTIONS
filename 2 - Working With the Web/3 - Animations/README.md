# Practical Animation

Take a look at the most popular iOS apps, and you'll see elegant and subtle animations used to create a connection with the on-screen content. When implemented in the right places and at the right times, animation can provide feedback, enhance the sense of direct manipulation, or help users visualize the results of their actions.

In this lesson, I learned how to use the UIView class and closures to add animations that enhance the presentation and functionality of my apps.

## What I Learned
- How and when to use animations to improve the user experience.
- Which properties can be animated using UIKit.
- How to use UIKit to create basic animations.

## Vocabulary
- `affine transformation`: Mathematical operation that applies a linear transformation to graphic elements.
- `animation`: Process of gradually changing a property of an object over time.
- `concatenate`: Sequentially combine multiple transformations.
- `Core Animation`: Advanced animation framework in iOS.
- `live view`: Visual representation updated in real-time in a development environment like Playground.
- `PlaygroundPage`: Module that provides functions for interacting with a Playground at runtime.
- `PlaygroundSupport`: Framework that offers additional support for Playgrounds in Swift.
- `touch down`: Event that occurs when the screen or mouse is pressed.
- `touch up`: Event that occurs when the finger is lifted after a press.
- `transform`: Change the position, size, or orientation of an object.
- `wireframe model`: Visual representation of a three-dimensional object using lines instead of solid surfaces.

#### 3 - Animations

##### Contest

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/9a5645bd-ff91-4c91-bf71-bc3f6ddf7379

In this code, a class named `ViewController` is defined, which inherits from `UIViewController.` View Controllers in iOS are responsible for the management of the user interface and view logic.

Within this class, a property named `emailTextField` is declared with the `@IBOutlet` attribute. This attribute signifies that this property is connected to a user interface element in Interface Builder, in this case, a text field.

The `viewDidLoad` method is automatically called when the view is loaded into memory. Currently, this method is empty, but it is used to perform additional configurations in the view, if necessary.

The `enterButtonDidTouchUpInside` method is executed when a button is tapped, in this case, the `Enter` button. Here, a check is performed: if the text field (`emailTextField`) is empty, the `performLabTextFieldShakeAnimation` method is called. Otherwise, a transition to another view is made using `performSegue(withIdentifier:sender:)`.

The `performLabTextFieldShakeAnimation` is a private method that carries out an animation on the text field (`emailTextField`) to simulate a `shake` effect when the field is empty. This animation employs a transformation that shifts the field 20 points to the right and then returns it to its original position. The total duration of the animation is 0.4 seconds, divided into two parts of 0.2 seconds each: 0.2 seconds for the shift and 0.2 seconds for returning to the original position.

Furthermore, an extension named `Challenge Solution` is provided, which defines a method `performChallengeTextFieldShakeAnimation.` This method executes a more intricate animation to simulate a `shake` effect on the text field. `UIView.animateKeyframes` is used to divide the animation into multiple steps or `keyframes.` Each keyframe horizontally shifts the text field and then returns it to its original position. This creates a more elaborate `shaking` effect that repeats several times.

In summary, this code represents a View Controller in an iOS application that performs animations in response to user interaction. The `shake` animation is utilized to indicate an empty text field, and the `Challenge Solution` extension offers a more complex version of the `shake` animation for experimentation or challenge purposes.

##### MusicWireframe

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/1b9e7579-1522-42ad-b871-76b810250f4e

The provided code represents a view controller (`ViewController`) in Swift, designed to oversee and control a music playback interface in an application.

The `ViewController class` contains several properties labeled with the `@IBOutlet` notation, which are associated with user interface (GUI) components. These properties include `albumImageView`, `reverseBackground`, `playPauseBackground`, `forwardBackground`, `reverseButton`, `playPauseButton`, and `forwardButton`.

The `playback state` is controlled by the `isPlaying` variable, which determines whether the music is playing (`true`) or paused (`false`). This state is visually reflected through the `playPauseButton`.

Within the `viewDidLoad` method, visual elements are configured, such as the `background buttons` referred to as `reverseBackground`, `playPauseBackground`, and `forwardBackground`. These elements are prepared for the interface by rounding their corners and initially hiding them with an `alpha` value of `0.0`.

The `playPauseButtonTapped` method is triggered when the `play/pause button` (`playPauseButton`) is tapped. If the music is playing (`isPlaying == true`), an `animation` is initiated that restores the album image to its `original size`. If the music is paused (`isPlaying == false`), an animation is executed that `reduces the size of the album image`.

The `touchedUpInside` and `touchedDown` methods are triggered when a button is released or touched, respectively. It is determined which of the buttons was manipulated (forward, `play/pause`, or reverse), and an `animation` affecting the associated visual elements, such as `buttonBackground`, is executed. When releasing the button (`touchedUpInside`), the elements return to their original state. When touching a button (`touchedDown`), visual effects are applied, including an increase in `opacity` and a slight `size reduction` of the button.

In summary, the code presents a view controller that manages a music playback interface, employing animations and visual interactions to enhance the user experience. When interacting with the playback, pause, and navigation buttons, animations are applied to provide visual feedback. The `album image` is also animated based on the playback state, contributing to a more engaging and dynamic user experience.
