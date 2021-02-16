//
//  PicturesAnimationViewController.swift
//  VK-2
//
//  Created by Julie on 03.02.2021.
//

import UIKit

class PicturesAnimationViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    
    
    var name: String = "Gabrielle Delacour"
    
    var i: Int = 0
    var m: Int = 1
    func SetImage(i: Int, m: Int) {
        self.picture.image = UIImage(named: PicturesDictionary[name]![i])
        self.i += m
        if self.i == PicturesDictionary[name]!.count {
            self.i = 0
        } else if self.i < 0 {
            self.i = PicturesDictionary[name]!.count - 1
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer =
            UIPanGestureRecognizer(target: self, action: #selector(onPan(_ :)))
        self.view.addGestureRecognizer(recognizer)
        
        SetImage(i: i, m: m)
        picture.contentMode = .scaleAspectFill
        
        picture.image = UIImage(named: PicturesDictionary[name]![i])
    }
    

    var interactiveAnimator: UIViewPropertyAnimator!
    
    @objc func onPan(_ recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.picture)
        
        switch recognizer.state {
        case .began:
            interactiveAnimator = UIViewPropertyAnimator(duration: 1.3, curve: .easeInOut, animations: {
                if translation.x / 100 > 0 {
                    self.picture.frame = self.picture.frame.offsetBy(dx: self.picture.frame.size.width, dy: 25)
                    self.picture.alpha = 0
                    self.SetImage(i: self.i, m: -1)
                } else if translation.x / 100 < 0 {
                    self.picture.frame = self.picture.frame.offsetBy(dx: -self.picture.frame.size.width, dy: -25)
                    self.picture.alpha = 0
                    self.SetImage(i: self.i, m: 1)
                }
                
                self.picture.transform = CGAffineTransform(scaleX: 3, y: 3)
                
            })
            
            interactiveAnimator.pauseAnimation()
            
        case .changed:
//            let translation = recognizer.translation(in: self.picture)
            interactiveAnimator.fractionComplete = translation.x / 100
            print(translation.x / 100)
            
        case .ended:
            interactiveAnimator.continueAnimation(withTimingParameters: nil, durationFactor: 1.3)
            interactiveAnimator.startAnimation()
            
            interactiveAnimator.addAnimations {
                self.picture.transform = .identity
                self.picture.alpha = 1
            }
            interactiveAnimator.startAnimation()
            
            
        default: return
        }
    }
    
    
}
