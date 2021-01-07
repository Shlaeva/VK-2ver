//
//  MyGroupsCell.swift
//  VK-2
//
//  Created by Julie on 13.12.2020.
//

import UIKit

class MyGroupsCell: UITableViewCell {

    @IBOutlet weak var myGroupImage: UIImageView!
    @IBOutlet weak var myGroupName: UILabel!
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
