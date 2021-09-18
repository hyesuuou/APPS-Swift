//
//  ViewController.swift
//  CryptocurrencyConverter
//
//  Created by 김혜수 on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ratioTextField: UITextField!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var toggleCurrency: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    @IBAction func exchangeButtonClicked(_ sender: Any) {
        let ratio = Double(ratioTextField.text!)!
        let input = Double(inputTextField.text!)!
        let result = ratio * input
        
        if toggleCurrency.selectedSegmentIndex == 0 {
            resultLabel.text = "BTC \(result)"
        }
        else {
            resultLabel.text = "ETH \(result)"
        }
        
        
    }
    
}

