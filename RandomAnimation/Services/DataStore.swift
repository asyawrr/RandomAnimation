//
//  DataStore.swift
//  RandomAnimation
//
//  Created by Asya Sher on 27.12.2022.
//

import SpringAnimation

class AnimationData {
    
    static let shared = AnimationData()
    
    let animationTypes = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
    
}
