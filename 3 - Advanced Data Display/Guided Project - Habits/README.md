# `Guided Project: Habits`

I acquired fundamental skills in this unit, learning to use collection views to display datasets. I also explored Swift generics, worked with diffable data sources for easy dynamic updates, and discovered the power of compositional layouts to create advanced interfaces. In this guided project, I built a simple social networking client application that motivates users to follow good `habits` by ranking them against other users.

Similar to the restaurant project in the previous unit, I used a server on my computer. Also, like in the restaurant project, my focus was on the user interface; the application data was provided along with a simulation modeling user interaction with the app over time.

## `Server Details and Project Setup`
Whenever you work with data from a web service, it's best to start by examining the data that the web service provides. It comes with default data, so take some time now to set up the `server` and understand the details.

**Run the Server**
The `Habits` folder included in this project contains a macOS application for the `server`, `HabitServer.app`. Open the application. As in the `Restaurant` project, you may see a warning dialog. If you see this, click "Open" to indicate that you trust the application.

To start and stop the `server`, click the button in the `Server` section on the left. If you make changes to the `server` resource files, you'll need to stop and restart the `server`.

![IMG_DDF6A3632556-1-3](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/69ef7dca-be92-4592-8fa9-83090e47e40e)

The `server` app allows you to edit users, `habits`, `categories`, and the active user, all of which are defined in JSON files. You can also open the images folder that contains user profile images. If you want to add your own images to this directory, make sure they are in PNG format. Note that the profile image for a user is always named after the user's ID.

To verify that the `server` is functioning properly, make sure it is running, then open your browser and load the URL http://localhost:8080. The browser should display text indicating the status of the `server`. If you receive an error, the most common cause is that one of the JSON files has an invalid format. You'll need to verify that the JSON data is valid, close the application window, and restart the `server`. You can use the "Reset Data" button to discard your custom data and restore the original files.

**Professional Tip:** To check if a JSON file is valid, run `python -m json.tool <JSON file>` from a command prompt. The output will either be the JSON from the file (indicating that it's valid) or an error message explaining what's wrong.

As in the `restaurant` project, you may see a prompt asking for permission to allow incoming connections to the `server`. If you do see it, click "Allow."

## `Server Endpoints`

For the `Habits` API service, every URL consists of http://localhost:8080 and one of the following endpoints:

- `/users`: A GET request to this endpoint will return a dictionary containing the users of the social network.

- `/habits`: A GET request to this endpoint will return a dictionary containing the `habits` a user can log.

- `/images`: Combined with the name of an image, a GET request to this endpoint will return the profile image associated with a user.

- `/userStats`: A GET request to this endpoint will return a summary of logged `habits` for all users. It can also be combined with a query parameter, "ids," to return statistics for a subset of users.

- `/habitStats`: A GET request to this endpoint will return a summary of user logs for all `habits`. It can also be combined with a query parameter, "names," to return statistics for a subset of habits.

- `/combinedStats`: A GET request to this endpoint will return a combined response comprising information from `/userStats` and `/habitStats`.

- `/userLeadingStats`: Combined with a user ID, a GET request to this endpoint will return user statistics containing just those `habits` in which the user is leading. If a user isn't leading in any habits, no statistics will be returned.

- `/loggedHabit`: A POST to this endpoint will log a new event related to one `habit`—the user's way of saying, for example, "I just took a walk."

## `JSON Structure`


To examine the JSON data from the API, you'll use a command-line tool called `curl`. Open the Terminal app, then type the following command to see the users:
 
`curl localhost:8080/users`

At the root level of the JSON is a dictionary containing user `ID` keys; the corresponding values include the user names and `IDs`. (As in the previous project, if you compare this dictionary's values to `users.json`, you'll notice that the JSON returned by the server doesn't match up exactly with the JSON in the file due to the way the server handles the data.) In each dictionary of the JSON returned by the server, you'll see at least two of the following keys:
- `id` is a unique string that distinguishes one user from another. All users have an `ID`, and the `ID` values are unique. If you modify the server's `users.json` file, make sure each `ID` value remains unique.
- `name` is a string that represents the name the user presents to the social network. All users have a name, but the server doesn't require user names to be unique.
- `color` is a dictionary that specifies the hue, saturation, and brightness that define a color. The user sets the color as a preference, and you'll use it to add an extra touch of each user's personality to the app. `color` can be null.
- `bio` is a string with additional information the user has chosen to share with others.

Now use `curl` to inspect all the `habits`.

`curl localhost:8080/habits`

Each item in the returned JSON dictionary of `habit` objects has the following properties:
- The key of the dictionary is the `habit` name, which uniquely identifies it, and the value is the `habit`.
- `name` is the displayed name of the `habit`.
- `category` is a dictionary with three keys, `name`, `color`, and `description`, which define the category the `habit` belongs to.
- `info` is a string with additional descriptive information for the `habit`.

You can also use `curl localhost:8080/categories` to see all the `categories`. Note that you won't be using this endpoint in the app because there's no screen that uses categories as the primary display objects.

## `Dynamic Data`


In this project, the `server` simulates an active social network, with users periodically logging their activities. Much of your app's behavior relies on the data generated by this activity. The built-in users (those in `users.json`) are assigned random rates for logging each of the `habits`, and this data is recorded on the server. The `Habits` service doesn't allow for browsing a time line of individual log entries; it aggregates all the entries to produce summaries. You can query for the `habit` log data in two ways: by user or by `habit`.

You'll need to start the simulation to see this data. In the `HabitServer` app, click "Start" under Simulation. You can use the slider to adjust how quickly the simulation runs. Drag the slider to the left to slow the simulation down so that it more closely mimics real-life activity, with seconds or minutes elapsing between logged `habits`. Drag it to the right to accelerate the simulation so that you can test how your app responds to changing data.

In Terminal, type:

`curl localhost:8080/habitStats`

In the returned array, you will see objects with the following properties:
- `habit` is the `habit` for which the statistics were collected.
- `userCounts` is an array of additional dictionary objects with two keys each:
  - `user` is the user who recorded the habit.
  - `count` is the number of recorded events.

Note that you can use an optional query string to specify a comma-separated list of specific habit names, for example, `?names=Yoga`.

The aggregated statistics for users have a similar structure. Enter the following command in the `Terminal` to view it:

`curl localhost:8080/userStats`

In the returned array, you will see objects with the following properties:
- `user` is the `user` for whom the statistics were collected.
- `habitCounts` is an array of additional objects with two keys each:
  - `habit` is the `habit` that the user has recorded.
  - `count` is the number of recorded events.
  
  Note that you can use an optional query string to specify a comma-separated list of specific habit names, for example, `?ids=user0`.

As a convenience, you can query user statistics and habit statistics at the same time. Enter the following command in the `Terminal`:

`curl localhost:8080/combinedStats`

The returned JSON contains a root-level dictionary with two keys: `userStatistics` and `habitStatistics`. The structure of the corresponding arrays should be identical to the responses you get from requests to `/userStats` and `/habitStats`.

Finally, try querying the server for habit leadership statistics. Enter the following in the `Terminal`:

`curl localhost:8080/userLeadingStats/user0`

The returned object will have a structure identical to the objects in the array returned by the `/userStats` endpoint, but the data will contain counts only for those habits where the user is a leader. You may need to try different user IDs before getting results with one or more habit counts, as a given user may not lead in any habit.

## `Data Submission`

There is an additional endpoint, loggedHabit, that requires a JSON data POST. You will use it to allow the user to record their own habits. The HabitServer application does not handle user accounts or login, so it uses the content of the activeUser.json file to identify the user currently using the application, rather than those simulated by the server. You won't learn to use curl to test this endpoint.

### `Habits`

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIF-DATA-COLLECTIONS/assets/51039101/aef78543-2d64-4ab8-949c-f17b1185007f

## **`iOS Habit-Tracking Application - Technical Explanation`**

The given code snippets are part of an iOS application for habit tracking, which functions as a social network for sharing habits. This in-depth explanation provides a detailed overview of the various components, data models, and network requests utilized within the application.

**`Model Layer:`**

1. **Habit Model:**
   - The `Habit` struct represents a habit and includes attributes such as its `name`, `category`, and `info`. The `category` is categorized further into a nested `Category` struct.
   - The `Habit` model conforms to the `Codable`, `Hashable`, and `Comparable` protocols, making it serializable, hashable, and comparable based on the habit's `name`.

2. **Category Model:**
   - The `Category` struct defines a category for habits, containing the `name` and `color`. The `color` is defined as a separate `Color` struct.
   - Like the `Habit` model, `Category` also conforms to the `Codable` and `Hashable` protocols, enabling serialization and making it hashable.

3. **Color Model:**
   - The `Color` struct represents a color using `hue`, `saturation`, and `brightness` values. It also conforms to the `Codable` protocol and has a computed property to convert the color into a `UIColor`.

**`Network Layer:`**

4. **`API Requests:`**
   - Several API request structs are defined, such as `HabitRequest`, `UserRequest`, `HabitStatisticsRequest`, `UserStatisticsRequest`, `HabitLeadStatisticsRequest`, `ImageRequest`, `LogHabitRequest`, and `CombinedStatisticsRequest`. Each corresponds to a specific type of API request.
   - These request structs conform to the `APIRequest` protocol. They specify the request's path, query parameters, and data (if applicable). Additionally, they handle deserialization of API responses.
   - Error handling is implemented to capture issues like missing items or failed requests.

**`User Interface Layer:`**

5. **`HabitCollectionViewController:`**
   - This view controller manages a collection view that displays a list of habits. The habits are organized into sections, including "Favorites" and categories based on the `Category` model.
   - A diffable data source, `UICollectionViewDiffableDataSource`, is used for efficient management of the collection view's data. It handles smooth updates when changes occur in the data source.
   - Each habit is presented in a cell within the collection view, and users can interact with the habits through context menus.

6. **`HabitDetailViewController:`**
   - This view controller displays detailed information about a selected habit. It provides a view of the habit's name, category, and related statistics.
   - Similar to `HabitCollectionViewController`, a diffable data source is used to manage and update the collection view inside this view controller.

**`Diffable Data Sources:`**
- The application employs diffable data sources to manage and display data in collection views efficiently. These data sources are part of the Combine framework introduced in iOS 13, allowing for smooth and efficient updates to collection views.
- Diffable data sources work with snapshots, which represent the current state of the collection view's data. They are automatically updated when changes occur.
- When new habits, categories, or sections are added, or when habits are updated, a new snapshot is created and applied to the data source. This approach is highly efficient and leads to a responsive user interface.

**`Advantages of Diffable Data Sources:**
- They provide a convenient way to manage and display data within a collection view, ensuring that the UI remains synchronized with the data source.
- Diffable data sources simplify the process of inserting, deleting, or moving items within a collection view, saving developers from manually managing these operations.
- User interactions with the application result in changes to the data model that are seamlessly reflected in the UI with smooth animations, enhancing the overall user experience.

In summary, the application leverages diffable data sources to optimize the performance and user experience of collection views. These data sources automatically handle updates and animations in response to changes in the data source, making them a crucial component of modern iOS application development for the efficient management of UI components.

# `Summary`

I have come a long way since I started with Swift Data Collections Development. In this unit, I spent most of the time displaying extensive sets of data in various forms. First, I acquired the basics of collection views, leveraging my existing knowledge of table views. Then, I understood how generics in Swift allow me to write generalized code. After that, I built increasingly complex user interfaces by harnessing the extensive capabilities of compositional layouts and diffable data sources.
