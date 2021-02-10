//
//  LaunchScreenViewController.swift
//  VK-2
//
//  Created by Julie on 09.12.2020.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    var loadingView1 = UIView()
    var loadingView2 = UIView()
    var loadingView3 = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView1 = UIView(frame: CGRect(x: self.view.bounds.width / 2 - 60, y: 100, width: 30, height: 30))
        loadingView2 = UIView(frame: CGRect(x: self.view.bounds.width / 2 - 15, y: 100, width: 30, height: 30))
        loadingView3 = UIView(frame: CGRect(x: self.view.bounds.width / 2 + 30, y: 100, width: 30, height: 30))
        
        loadingView1.clipsToBounds = true
        loadingView2.clipsToBounds = true
        loadingView3.clipsToBounds = true
        
        loadingView1.layer.cornerRadius = loadingView1.bounds.width / 2
        loadingView2.layer.cornerRadius = loadingView2.bounds.width / 2
        loadingView3.layer.cornerRadius = loadingView3.bounds.width / 2
        
        loadingView1.backgroundColor = .purple
        loadingView2.backgroundColor = .purple
        loadingView3.backgroundColor = .purple
        
        self.view.addSubview(loadingView1)
        self.view.addSubview(loadingView2)
        self.view.addSubview(loadingView3)
        

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

