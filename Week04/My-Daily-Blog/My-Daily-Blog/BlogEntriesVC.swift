//
//  BlogEntriesVC.swift
//  My-Daily-Blog
//
//  Created by 김혜수 on 2021/10/01.
//

import UIKit

class BlogEntriesVC: UITableViewController {

    var blogEntries: [BlogEntry] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogEntries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell();
        let blogEntry = blogEntries[indexPath.row]
        row.textLabel?.text = blogEntry.content
        return row
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryVC {
            entryViewController.entriesViewController = self
        }
    }

}
