//
//  MoveView.swift
//  iOS-Animation
//
//  Created by 박길남 on 2018. 9. 3..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import UIKit

class MoveView: UIView {
    var point:CGPoint = CGPoint(x: 0, y: 0)
    var centerPoint:CGPoint = CGPoint(x: 0, y: 0)
    
    var animation:UIViewPropertyAnimator = UIViewPropertyAnimator()
    
    func setAnimation(duration:TimeInterval, curve:UIViewAnimationCurve) {
        self.animation = UIViewPropertyAnimator(duration: duration, curve: curve)
    }
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = self.convert((touch?.location(in: self))!, to: self.superview)
        
        self.point = location
        self.centerPoint = self.center
    }
    
    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = self.convert((touch?.location(in: self))!, to: self.superview)
        
        let pointX = location.x - self.point.x
        let fraction = (self.centerPoint.x + pointX) / 250
        
        self.animation.fractionComplete = fraction
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
