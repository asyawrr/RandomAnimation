//
//  AnimationType.swift
//  RandomAnimation
//
//  Created by Asya Sher on 27.12.2022.
//

import SpringAnimation

struct AnimationType {
    static let animation = AnimationData.shared
    
    let name: String
    let curve: String
    let duration: Double
    let delay: Double
    let force: Double
    
    var description: String {
        """
        name: \(name)
        curve: \(curve)
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        force: \(String(format: "%.2f", force))
        """
    }
}

extension AnimationType{
    static func getRandomAnimation() -> AnimationType {
        
        let name = animation.animationTypes.randomElement()?.rawValue ?? "pop"
        let curve = animation.curves.randomElement()?.rawValue ?? "spring"
        let duration = Double.random(in: 0.5...2)
        let delay = Double.random(in: 0...1)
        let force = Double.random(in: 0.8...1.6)
        
        return AnimationType(name: name, curve: curve, duration: duration, delay: delay, force: force)
    }
}
