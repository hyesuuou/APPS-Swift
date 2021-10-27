//
//  BlogEntriesVC.swift
//  My-Daily-Blog
//
//  Created by 김혜수 on 2021/10/01.
//

import UIKit
import CoreData

class BlogEntriesVC: UITableViewController {

    var blogEntries: [BlogEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let dataFromCoreData = try? context.fetch(BlogEntity.fetchRequest()) as? [BlogEntity] {
                blogEntries = dataFromCoreData
                self.tableView.reloadData()
            }
            
            let request: NSFetchRequest<BlogEntity> = BlogEntity.fetchRequest()
            request.sortDescriptors = [NSSortDescriptor(key: "date", ascending: false)]
           
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogEntries.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let row = tableView.dequeueReusableCell(withIdentifier: "entryRow") as? BlogEntryTableViewCell {
           
            let blogEntry = blogEntries[indexPath.row];
            row.entryLabel.text = blogEntry.content
            row.momthTag.text = blogEntry.setMonth()
            row.dateTag.text = blogEntry.setDay()
        //row.textLabel?.text = blogEntry.content
        return row
        }
        else {
            return UITableViewCell()
        }
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let blogEntry = blogEntries[indexPath.row]
        performSegue(withIdentifier: "onEntrySegue", sender: blogEntry)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let entryViewController = segue.destination as? BlogEntryVC {
            if let onEntrySubmit = sender as? BlogEntity {
                entryViewController.blogEntry = onEntrySubmit
            }
        }
    }

}
