//
//  LikeControl.swift
//  VK-2
//
//  Created by Julie on 27.12.2020.
//

import UIKit

class LikeControl: UIControl {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
    var likeCounter: Int = 0
    var likeIndicator = true

    var color: UIColor = .purple

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.Liking()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.Liking()
    }
    
    func Liking() {
        
        button.imageView?.tintColor = .purple
        button.imageView?.contentMode = .scaleAspectFit
        
//        кнопка в состоянии покоя
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.setTitle("\(likeCounter)", for: .normal)
        button.setTitleColor(color, for: .normal)
//        кнопка выбрана (нажата)
        button.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        button.setTitle("\(likeCounter+1)", for: .selected)
        button.setTitleColor(color, for: .selected)
        

//        вызываем метод нажатия на кнопку
        button.addTarget(self, action: #selector(OnTap), for: .touchUpInside)
        
        self.addSubview(button)
    }
    
    @objc func OnTap() {
        if likeIndicator {
            button.isSelected = true
            likeIndicator = false
        } else {
            button.isSelected = false
            likeIndicator = true
        }
        AnimateButton()
    }
    
    func AnimateButton() {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 1
        animation.beginTime = CACurrentMediaTime()
        animation.fillMode = CAMediaTimingFillMode.backwards
        
        self.button.layer.add(animation, forKey: nil)
    }

}


