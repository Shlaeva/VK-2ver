//
//  FriendsCell.swift
//  VK-2
//
//  Created by Julie on 13.12.2020.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
//    @IBOutlet weak var friendImage: UIImageView!
    
    @IBOutlet weak var friendCustomImageView: CustomImageView!
    
    
    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(OnTap))
        recognizer.numberOfTouchesRequired = 1
        recognizer.numberOfTapsRequired = 1
        return recognizer
        }()
        
    @objc func OnTap() {
        friendCustomImageView.AnimateImage()
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addGestureRecognizer(tapGestureRecognizer)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
