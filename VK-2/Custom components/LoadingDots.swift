//
//  LoadingDots.swift
//  VK-2
//
//  Created by Julie on 09.01.2021.
//

import UIKit

class LoadingDots: UIView {


    var loadingView1 = UIView()
    var loadingView2 = UIView()
    var loadingView3 = UIView()

    
    func setDots() {
        
    loadingView1.clipsToBounds = true
    loadingView2.clipsToBounds = true
    loadingView3.clipsToBounds = true
    
    loadingView1.layer.cornerRadius = loadingView1.bounds.width / 2
    loadingView2.layer.cornerRadius = loadingView2.bounds.width / 2
    loadingView3.layer.cornerRadius = loadingView3.bounds.width / 2
    
    loadingView1.backgroundColor = .purple
    loadingView2.backgroundColor = .purple
    loadingView3.backgroundColor = .purple
    
    self.addSubview(loadingView1)
    self.addSubview(loadingView2)
    self.addSubview(loadingView3)
    

    UIView.animate(withDuration: 1, delay: 0.0, options: [.autoreverse, .repeat], animations: {
        self.loadingView1.backgroundColor = .clear

    }, completion: nil)

    UIView.animate(withDuration: 1, delay: 0.35, options: [.autoreverse, .repeat], animations: {
        self.loadingView2.backgroundColor = .clear

    }, completion: nil)

    UIView.animate(withDuration: 1, delay: 0.70, options: [.autoreverse, .repeat], animations: {
        self.loadingView3.backgroundColor = .clear

    }, completion: nil)
        
    }

}


