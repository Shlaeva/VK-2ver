//
//  CustomImageView.swift
//  VK-2
//
//  Created by Julie on 21.12.2020.
//

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
     
    func AnimateImage(){
        self.imageView?.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 1,
                       delay: 0.0,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0.2,
                       options: [],
                       animations: {
                        self.imageView?.transform = .identity
                       },
                       completion: nil)
    }
     
}
