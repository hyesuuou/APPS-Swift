//
//  SecondVC.swift
//  MyApp
//
//  Created by 김혜수 on 2021/09/18.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var countDown: Int = 100

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        countDown = countDown - 5
        label.text = String(countDown)
        if countDown <= 50 {
            label.textColor = .red
        } else if countDown <= 10 {
            label.textColor = .blue
        }
        print(countDown)
    }
}
