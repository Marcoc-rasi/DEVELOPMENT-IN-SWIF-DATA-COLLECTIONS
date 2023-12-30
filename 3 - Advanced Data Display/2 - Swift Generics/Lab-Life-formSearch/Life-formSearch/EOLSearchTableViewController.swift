//
//  EOLSearchTableViewController.swift
//  EOLSearchTableViewController
//


import UIKit

class EOLSearchTableViewController: UITableViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    // keep track of async tasks so they can be cancelled if appropriate.
    var searchTask: Task<Void, Never>? = nil
    
    var items = [EOLItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func fetchMatchingItems() {
        
        self.items = []
        self.tableView.reloadData()
        
        let searchTerm = searchBar.text ?? ""
        
        if !searchTerm.isEmpty {
            let searchRequest = EOLSearchAPIRequest(searchTerm: searchTerm)
            searchTask?.cancel()
            searchTask = Task {
                do {
                    let searchResults = try await EOLController.shared.sendRequest(searchRequest)
                    self.items = searchResults.results
                    self.tableView.reloadData()
                } catch {
                    print(error)
                }
                searchTask = nil
            }
        }
    }
    
    @IBSegueAction func showItemDetails(_ coder: NSCoder, sender: Any?) -> EOLItemViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return nil
        }
        
        let item = items[indexPath.row]
        return EOLItemViewController(coder: coder, item: item)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Item", for: indexPath)
        let item = items[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = item.commonName
        content.secondaryText = item.scientificName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
}

extension EOLSearchTableViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        fetchMatchingItems()
        searchBar.resignFirstResponder()
    }
}
