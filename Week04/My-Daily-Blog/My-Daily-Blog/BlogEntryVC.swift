//
//  BlogEntryVC.swift
//  My-Daily-Blog
//
//  Created by 김혜수 on 2021/10/01.
//

import UIKit

class BlogEntryVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var blogEntryTextView: UITextView!
    
    var entriesViewController: BlogEntriesVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        // 뷰가 사라지기 전에 실행됨
        
        /// Make Entry
        let blogEntry = BlogEntry()
        blogEntry.date = datePicker.date
        blogEntry.content = blogEntryTextView.text
        
        /// Add Entry tableview array
        entriesViewController?.blogEntries.append(blogEntry)
        entriesViewController?.tableView.reloadData()
    }

}
