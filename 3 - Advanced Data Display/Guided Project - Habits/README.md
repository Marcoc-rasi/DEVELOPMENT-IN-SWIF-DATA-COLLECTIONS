# Guided Project: Habits

I acquired fundamental skills in this unit, learning to use collection views to display datasets. I also explored Swift generics, worked with diffable data sources for easy dynamic updates, and discovered the power of compositional layouts to create advanced interfaces. In this guided project, I built a simple social networking client application that motivates users to follow good `habits` by ranking them against other users.

Similar to the restaurant project in the previous unit, I used a server on my computer. Also, like in the restaurant project, my focus was on the user interface; the application data was provided along with a simulation modeling user interaction with the app over time.

## Server Details and Project Setup
Whenever you work with data from a web service, it's best to start by examining the data that the web service provides. It comes with default data, so take some time now to set up the `server` and understand the details.

**Run the Server**
The `Habits` folder included in this project contains a macOS application for the `server`, `HabitServer.app`. Open the application. As in the `Restaurant` project, you may see a warning dialog. If you see this, click "Open" to indicate that you trust the application.

To start and stop the `server`, click the button in the `Server` section on the left. If you make changes to the `server` resource files, you'll need to stop and restart the `server`.

(image)

The `server` app allows you to edit users, `habits`, `categories`, and the active user, all of which are defined in JSON files. You can also open the images folder that contains user profile images. If you want to add your own images to this directory, make sure they are in PNG format. Note that the profile image for a user is always named after the user's ID.

To verify that the `server` is functioning properly, make sure it is running, then open your browser and load the URL http://localhost:8080. The browser should display text indicating the status of the `server`. If you receive an error, the most common cause is that one of the JSON files has an invalid format. You'll need to verify that the JSON data is valid, close the application window, and restart the `server`. You can use the "Reset Data" button to discard your custom data and restore the original files.

**Professional Tip:** To check if a JSON file is valid, run `python -m json.tool <JSON file>` from a command prompt. The output will either be the JSON from the file (indicating that it's valid) or an error message explaining what's wrong.

As in the `restaurant` project, you may see a prompt asking for permission to allow incoming connections to the `server`. If you do see it, click "Allow."

## Server Endpoints
For the `Habits` API service, every URL consists of http://localhost:8080 and one of the following endpoints:

- `/users`: A GET request to this endpoint will return a dictionary containing the users of the social network.

- `/habits`: A GET request to this endpoint will return a dictionary containing the `habits` a user can log.

- `/images`: Combined with the name of an image, a GET request to this endpoint will return the profile image associated with a user.

- `/userStats`: A GET request to this endpoint will return a summary of logged `habits` for all users. It can also be combined with a query parameter, "ids," to return statistics for a subset of users.

- `/habitStats`: A GET request to this endpoint will return a summary of user logs for all `habits`. It can also be combined with a query parameter, "names," to return statistics for a subset of habits.

- `/combinedStats`: A GET request to this endpoint will return a combined response comprising information from `/userStats` and `/habitStats`.

- `/userLeadingStats`: Combined with a user ID, a GET request to this endpoint will return user statistics containing just those `habits` in which the user is leading. If a user isn't leading in any habits, no statistics will be returned.

- `/loggedHabit`: A POST to this endpoint will log a new event related to one `habit`—the user's way of saying, for example, "I just took a walk."

## JSON Structure
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

## Dynamic Data
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

## Data Submission

There is an additional endpoint, loggedHabit, that requires a JSON data POST. You will use it to allow the user to record their own habits. The HabitServer application does not handle user accounts or login, so it uses the content of the activeUser.json file to identify the user currently using the application, rather than those simulated by the server. You won't learn to use curl to test this endpoint.

# Summary

I have come a long way since I started with Swift Data Collections Development. In this unit, I spent most of the time displaying extensive sets of data in various forms. First, I acquired the basics of collection views, leveraging my existing knowledge of table views. Then, I understood how generics in Swift allow me to write generalized code. After that, I built increasingly complex user interfaces by harnessing the extensive capabilities of compositional layouts and diffable data sources.
