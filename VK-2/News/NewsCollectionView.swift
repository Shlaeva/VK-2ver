//
//  NewsCollectionView.swift
//  VK-2
//
//  Created by Julie on 05.01.2021.
//

import UIKit

class NewsCollectionView: UICollectionView {
    
    func setImage(_ image: UIImage) {
        let newsImage = UIImageView(frame: CGRect(x: 5, y: 5, width: 75, height: 75))
        self.addSubview(newsImage)
    }
    
}


