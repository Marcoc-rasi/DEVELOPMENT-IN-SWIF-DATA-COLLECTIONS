//
//  FoodTableViewController.swift
//  Meal Tracker - Marcocrasi
//
//  Created by MacBook 28 on 21/06/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

   
    var meals: [Meal] {
        let breakfast = Meal(name: "Breakfast", food: [Food(name: "Waffles", description: "A short stack of buttermilk pancakes can be a sweet and filling treat to enjoy any time of day!"),
            Food(name: "Avocado Toast", description: "Your favorite type of bread and top it off with vegetables and seasonings of your liking."),
            Food(name: "Cereal", description: "With a large variety of flavors, there’s a cereal option out there for everyone. Cereal is another quick and easy breakfast option")])
        let lunch = Meal(name: "Lunch", food: [Food(name: "Kathi Rolls", description: "Kathi rolls take your favorite Indian dishes, like chickpeas and cauliflower sabzi, and wrap them up in a thick, sturdy paratha flatbread."),
            Food(name: "Sushi", description: "You can choose a mix of traditional rolls, like avocado and tuna, while also testing out a few specialty styles, like the rainbow roll."),
            Food(name: "Stuffed Bell Peppers", description: "Peppers are a flavorful delivery mechanism for a spiced meat, rice, or lentil filling.")])
        let dinner = Meal(name: "Dinnner", food: [Food(name: "Slow Cooker Pot Roast", description: "This pot roast is super flavorful, thanks to the addition of a packet of dried onion soup mix. Serve the meat and veggies over egg noodles or rice."),
            Food(name: "Veggie Garlic Noodles", description: "Get your veggies in with this delicious and quick noodle stir-fry. Green onions and garlic pack a flavor punch, while the brown sugar and soy tie everything together in a sweet and savory sauce."),
            Food(name: "Chicken & Biscuit Bake", description: "It doesn't get easier than this: store-bought biscuits, frozen mixed veggies, and rotisserie chicken come together in a warming, hearty dish everyone will love.")])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

    

}
