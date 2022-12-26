//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Asya Sher on 26.12.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var animationCodeLabel: UILabel!
        
        
    @IBAction func runNextAnimationButton(_ sender: SpringButton) {
        let animation = AnimationType.getRandomAnimation()
        
        animatedView.animation = animation.name
        animatedView.force = animation.force
        animatedView.delay = animation.delay
        animatedView.duration = animation.duration
        animatedView.duration = animation.duration
        animatedView.animate()
        
        animationCodeLabel.text = animation.descryption
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

