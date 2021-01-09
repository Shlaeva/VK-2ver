//
//  FollowControl.swift
//  VK-2
//
//  Created by Julie on 04.01.2021.
//

import UIKit

class FollowControl: UIControl {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
    var followCounter: Int = 0
    var followIndicator = true

    var color: UIColor = .purple

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.Following()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.Following()
    }
    
    func Following() {
        
        button.imageView?.tintColor = .purple
        button.imageView?.contentMode = .scaleAspectFit
        
//        кнопка в состоянии покоя
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
        button.setTitle("\(followCounter)", for: .normal)
        button.setTitleColor(color, for: .normal)
//        кнопка выбрана (нажата)
        button.setImage(UIImage(systemName: "arrowshape.turn.up.right.fill"), for: .selected)
        button.setTitle("\(followCounter+1)", for: .selected)
        button.setTitleColor(color, for: .selected)
//        вызываем метод нажатия на кнопку
        button.addTarget(self, action: #selector(OnTap), for: .touchUpInside)
        
        self.addSubview(button)
    }
    
    @objc func OnTap() {
        if followIndicator {
            button.isSelected = true
            followIndicator = false
        } else {
            button.isSelected = false
            followIndicator = true
        }
        
    }
    
    
    
}

