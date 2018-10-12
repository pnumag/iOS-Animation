//
//  CustomActivityIndicatorView.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class CustomActivityIndicatorView: UIView {
    
    lazy private var animationLayer:CALayer = {
        return CALayer()
    }()
    
    var isAnimating:Bool = false
    var hideStopped:Bool = true
    
    init(size: CGSize) {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        super.init(frame: frame)
        
        animationLayer.frame = frame
        
        self.layer.addSublayer(animationLayer)
        
        SquareLodingAnimation.setUpAnimation(in: animationLayer, size: size)
    }
    
    func addToSuperView(superview:UIView) {
        superview.addSubview(self)
        superview.bringSubview(toFront: self)
        self.center = superview.center
    }
    
    func pause(layer: CALayer) {
        let pausedTime = layer.convertTime(CACurrentMediaTime(), from: nil)
        
        layer.speed = 0.0
        layer.timeOffset = pausedTime
        
        isAnimating = false
    }
    
    func resume(layer: CALayer) {
        let pausedTime = layer.timeOffset
        
        layer.speed = 1.0
        layer.timeOffset = 0.0
        
        let timeSincePause = layer.convertTime(CACurrentMediaTime(), from: nil) - pausedTime
        layer.beginTime = timeSincePause
        
        isAnimating = true
    }
    
    func startAnimating() {
        if isAnimating {
            return
        }
        
        if hideStopped {
            self.isHidden = false
        }
        
        resume(layer: animationLayer)
    }
    
    func stopAnimating() {
        if hideStopped {
            self.isHidden = true
        }
        
        pause(layer: animationLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

