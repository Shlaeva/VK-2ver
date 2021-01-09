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
  
    
    lazy var tapGestureRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(OnTap))
        recognizer.numberOfTouchesRequired = 1
        recognizer.numberOfTapsRequired = 1
        return recognizer
        }()
        
    @objc func OnTap() {
        myGroupImage.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 1,
                       delay: 0.0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0.2,
                       options: [],
                       animations: {
                        self.myGroupImage.transform = .identity
                       },
                       completion: nil)
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
