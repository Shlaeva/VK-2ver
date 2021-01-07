//
//  NewsTableViewCell.swift
//  VK-2
//
//  Created by Julie on 01.01.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textNews: UITextView!
    
    @IBOutlet weak var imageNews: UIImageView!
    
    @IBOutlet weak var collectionNews: NewsCollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
