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
    
    func SetImage(i: Int) {
        self.picture.image = UIImage(named: PicturesDictionary[name]![i])
        self.i += 1
        if self.i == PicturesDictionary[name]!.count {
            self.i = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer =
            UIPanGestureRecognizer(target: self, action: #selector(onPan(_ :)))
        self.view.addGestureRecognizer(recognizer)
        
        SetImage(i: i)
        picture.contentMode = .scaleAspectFill
        
        picture.image = UIImage(named: PicturesDictionary[name]![i])
    }
    

    var interactiveAnimator: UIViewPropertyAnimator!
    
    @objc func onPan(_ recognizer: UIPanGestureRecognizer) {
        
        
        
        switch recognizer.state {
        case .began:
            interactiveAnimator = UIViewPropertyAnimator(duration: 1.3, curve: .easeInOut, animations: {
                
                self.picture.frame = self.picture.frame.offsetBy(dx: -self.picture.frame.size.width, dy: -50)
                
                
                self.SetImage(i: self.i)
                self.picture.transform = CGAffineTransform(scaleX: 3, y: 3)
            })
            
            interactiveAnimator.pauseAnimation()
        case .changed:
            let translation = recognizer.translation(in: self.view)
            interactiveAnimator.fractionComplete = translation.x / 100
            
        case .ended:
            interactiveAnimator.continueAnimation(withTimingParameters: nil, durationFactor: 1.3)
            interactiveAnimator.startAnimation()
            
            interactiveAnimator.addAnimations {
                self.picture.transform = .identity
            }
            interactiveAnimator.startAnimation()
            
        default: return
        }
    }
    
    
}
