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
    
    private var animation = AnimationType.getRandomAnimation()
        
    @IBAction func runNextAnimationButton(_ sender: SpringButton) {
        animationCodeLabel.text = animation.description
        
        animatedView.animation = animation.name
        animatedView.force = animation.force
        animatedView.delay = animation.delay
        animatedView.curve = animation.curve
        animatedView.duration = animation.duration
        animatedView.animate()
        
        animation = AnimationType.getRandomAnimation()
        
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

