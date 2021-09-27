//
//  CountryTableViewController.swift
//  CountryList
//
//  Created by 김혜수 on 2021/09/19.
//

import UIKit

class CountryTableViewController: UITableViewController {
    
    let country = ["🇰🇷", "🇨🇦", "🇫🇷", "🇹🇷", "🇬🇧"]

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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = country[indexPath.row]
        performSegue(withIdentifier: "DefinitionSegue", sender: selectedCountry)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defOfVC = segue.destination as! CountryDefinitionVC
        let selectedCountry = sender as! String
        defOfVC.country = selectedCountry
    }
}
