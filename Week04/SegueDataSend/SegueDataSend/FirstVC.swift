//
//  FirstVC.swift
//  SegueDataSend
//
//  Created by 김혜수 on 2021/10/01.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? SecondVC {
            nextVC.firstVC = self
        }
    }
}
