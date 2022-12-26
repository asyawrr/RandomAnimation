//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Asya Sher on 26.12.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var animationCodeLabel: UILabel!
    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//    }
    
        
    @IBAction func runNextAnimationButton(_ sender: SpringButton) {
        let animation = AnimationType.getRandomAnimation()
        
        animatedView.animation = animation.name
        animatedView.force = animation.force
        animatedView.delay = animation.delay
        animatedView.duration = animation.duration
        animatedView.duration = animation.duration
        
        animationCodeLabel.text = animation.descryption
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

