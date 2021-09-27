//
//  CountryDefinitionVC.swift
//  CountryList
//
//  Created by 김혜수 on 2021/09/28.
//

import UIKit

class CountryDefinitionVC: UIViewController {

    @IBOutlet weak var flagLabel: UILabel!
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = "🇨🇦"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagLabel.text = country;
        if country == "🇰🇷" {
            countryDefinitionLabel.text = "Korea"
        }
        else if country == "🇨🇦" {
            countryDefinitionLabel.text = "Canada"
        }
        else if country == "🇫🇷" {
            countryDefinitionLabel.text = "France"
        }
        else if country == "🇹🇷" {
            countryDefinitionLabel.text = "Turkey"
        }
        else if country == "🇬🇧" {
            countryDefinitionLabel.text = "England"
        }
    }
    

}
