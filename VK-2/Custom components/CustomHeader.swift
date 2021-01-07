//
//  CustomHeader.swift
//  VK-2
//
//  Created by Julie on 30.12.2020.
//

import UIKit

class CustomHeader: UITableViewHeaderFooterView {
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setHeader()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setHeader()
    }
    
    func setHeader() {
        contentView.backgroundColor = .systemIndigo
        contentView.alpha = 0.5
        
    }
}
