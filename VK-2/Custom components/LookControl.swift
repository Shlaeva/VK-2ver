//
//  LookControl.swift
//  VK-2
//
//  Created by Julie on 04.01.2021.
//

import UIKit

class LookControl: UIControl {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
    var lookCounter: Int = 0
    var lookIndicator = true

    var color: UIColor = .purple

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.Looking()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.Looking()
    }
    
    func Looking() {
        
        button.imageView?.tintColor = .purple
        button.imageView?.contentMode = .scaleAspectFit
        
//        кнопка в состоянии покоя
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.setTitle("\(lookCounter)", for: .normal)
        button.setTitleColor(color, for: .normal)
//        кнопка выбрана (нажата)
        button.setImage(UIImage(systemName: "eye.fill"), for: .selected)
        button.setTitle("\(lookCounter+1)", for: .selected)
        button.setTitleColor(color, for: .selected)
//        вызываем метод нажатия на кнопку
        button.addTarget(self, action: #selector(OnTap), for: .touchUpInside)
        
        self.addSubview(button)
    }
    
    @objc func OnTap() {
        if lookIndicator {
            button.isSelected = true
            lookIndicator = false
        } else {
            button.isSelected = false
            lookIndicator = true
        }
        
    }
    
}


