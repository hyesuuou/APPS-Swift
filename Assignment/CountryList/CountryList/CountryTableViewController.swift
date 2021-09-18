//
//  CountryTableViewController.swift
//  CountryList
//
//  Created by 김혜수 on 2021/09/19.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    let country = ["한국", "미국", "프랑스", "영국"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return country.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        cell.textLabel?.text = country[indexPath.row]
        return cell
    }


}
