//
//  SecondVC.swift
//  SegueDataSend
//
//  Created by κΉνμ on 2021/10/01.
//

import UIKit

class SecondVC: UIViewController {
    
    var firstVC: FirstVC?

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        firstVC?.dataLabel.text = textfield.text
    }

}
