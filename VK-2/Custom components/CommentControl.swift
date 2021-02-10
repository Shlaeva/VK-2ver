//
//  CommentControl.swift
//  VK-2
//
//  Created by Julie on 04.01.2021.
//

import UIKit

class CommentControl: UIControl {
    
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
    var commentCounter: Int = 0
    var commentIndicator = true

    var color: UIColor = .purple

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.Comment()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.Comment()
    }
    
    func Comment() {
        
        button.imageView?.tintColor = .purple
        button.imageView?.contentMode = .scaleAspectFit
        
//        кнопка в состоянии покоя
        button.setImage(UIImage(systemName: "text.bubble"), for: .normal)
        button.setTitle("\(commentCounter)", for: .normal)
        button.setTitleColor(color, for: .normal)
//        кнопка выбрана (нажата)
        button.setImage(UIImage(systemName: "text.bubble.fill"), for: .selected)
        button.setTitle("\(commentCounter+1)", for: .selected)
        button.setTitleColor(color, for: .selected)
//        вызываем метод нажатия на кнопку
        button.addTarget(self, action: #selector(OnTap), for: .touchUpInside)
        
        self.addSubview(button)
    }
    
    @objc func OnTap() {
        if commentIndicator {
            button.isSelected = true
            commentIndicator = false
        } else {
            button.isSelected = false
            commentIndicator = true
        }
        
    }
    
    
    
}

