//
//  CustomImageView.swift
//  VK-2
//
//  Created by Julie on 21.12.2020.
//

import Foundation
import UIKit

@IBDesignable class CustomImageView: UIView {
    
    var imageView: UIImageView? = nil
    
    @IBInspectable var shadowRadius: CGFloat = 12
    
    @IBInspectable var shadowOpacity: Float = 1
    
    @IBInspectable var shadowColor: UIColor = .green
    
    
    func setImage(_ image: UIImage) {
        imageView = UIImageView(frame: self.bounds)
        imageView?.image = image
        imageView?.layer.cornerRadius = self.frame.size.width/2
        imageView?.layer.masksToBounds = true
        imageView?.contentMode = .scaleAspectFill
        
        self.backgroundColor = .clear
        self.addSubview(imageView!)
    }
    
    override func draw(_ rect: CGRect) {
//        super.draw(rect)
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        
    }
        
}
