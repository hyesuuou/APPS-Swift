//
//  BlogEntryTableViewCell.swift
//  My-Daily-Blog
//
//  Created by 김혜수 on 2021/10/27.
//

import UIKit

class BlogEntryTableViewCell: UITableViewCell {

    @IBOutlet weak var entryLabel: UILabel!
    @IBOutlet weak var dateTag: UILabel!
    @IBOutlet weak var momthTag: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
