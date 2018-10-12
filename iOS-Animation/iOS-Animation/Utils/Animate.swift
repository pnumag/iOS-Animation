//
//  Animate.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

class Animate {
    private var duration:TimeInterval
    private var delay:TimeInterval
    private var animations:() -> ()
    private var completion:((Bool) -> ())?
    private var options:UIViewAnimationOptions
    private var usingSpringWithDamping:CGFloat
    private var initialSpringVelocity:CGFloat
    
    init() {
        self.duration = 0.0
        self.delay = 0.0
        self.animations = {}
        self.completion = nil
        self.options = .curveLinear
        self.usingSpringWithDamping = 0.0
        self.initialSpringVelocity = 0.0
    }
    
    func setDuration(_ duration:TimeInterval) -> Self {
        self.duration = duration
        return self
    }
    
    func setDelay(_ delay:TimeInterval) -> Self {
        self.delay = delay
        return self
    }
    
    func setUsingSpringWithDamping(_ damping:CGFloat) -> Self {
        self.usingSpringWithDamping = damping
        return self
    }
    
    func setInitialSpringVelocity(_ velocity:CGFloat) -> Self {
        self.initialSpringVelocity = velocity
        return self
    }
    
    func setOptions(_ options:UIViewAnimationOptions = []) -> Self {
        self.options = options
        return self
    }
    
    func setAnimations(_ animations:@escaping () -> Void) -> Self {
        self.animations = animations
        return self
    }
    
    func setCompletion(_ completion:((Bool) -> Swift.Void)? = nil) -> Self {
        self.completion = completion
        return self
    }
    
    func start() {
        //        UIView.animate(withDuration: self.duration, delay: self.delay, options: self.options, animations: self.animations, completion: self.completion)
        UIView.animate(withDuration: self.duration,
                       delay: self.delay,
                       usingSpringWithDamping:self.usingSpringWithDamping,
                       initialSpringVelocity:self.initialSpringVelocity,
                       options: self.options,
                       animations: self.animations,
                       completion: self.completion)
    }
}

