//
//  CountryDefinitionVC.swift
//  CountryList
//
//  Created by κΉνμ on 2021/09/28.
//

import UIKit

class CountryDefinitionVC: UIViewController {

    @IBOutlet weak var flagLabel: UILabel!
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = Country()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flagLabel.text = country.flag;
        countryDefinitionLabel.text = "\(country.name) flag is \(country.flag). It was founded in \(country.year). It is in \(country.region). The Population is \(country.population) million."
    }
    

}
