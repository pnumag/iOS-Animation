//
//  PickAndUniqIconView.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class PickAndUniqIconView: UIView {

    var x:CGFloat {
        get {
            return self.center.x
        }
    }
    
    var y:CGFloat {
        get {
            return self.center.y
        }
    }
    
    var path1:(cgPath: CGPath, cgColor: CGColor) {
        get {
            let path = UIBezierPath().move(x: x, y: y)
                .addLine(x: x - 15, y: y - 20)
                .addArc(centerX: x - 30.5, centerY: y - 15, radius: 15, start: 3 * .pi / 2 + 0.785, end: .pi + 0.785, clockwise: false)
            
            let color = UIColor.squareKobiColor
            
            return (path.cgPath, color.cgColor)
        }
    }
    
    var path2:(cgPath: CGPath, cgColor: CGColor) {
        get {
            let path = UIBezierPath().addArc(centerX: x - 30.5, centerY: y - 15, radius: 15, start: .pi + 0.785, end: .pi - 0.785, clockwise: false)
                .addLine(x: x - 22, y: y + 18)
            
            let color = UIColor.squareAmberColor
            
            return (path.cgPath, color.cgColor)
        }
    }
    
    var path3:(cgPath: CGPath, cgColor: CGColor) {
        get {
            let path = UIBezierPath().move(x: x - 22, y: y + 18)
                .addLine(x: x, y: y + 43)
                .addLine(x: x + 12, y: y + 31)
            
            let color = UIColor.squareGreenGrapesColor
            
            return (path.cgPath, color.cgColor)
        }
    }
    
    var path4:(cgPath: CGPath, cgColor: CGColor) {
        get {
            let path = UIBezierPath().move(x: x + 12, y: y + 31)
                .addLine(x: x + 65, y: y - 25)
            
            let color = UIColor.squareRobinsEggBlueColor
            
            return (path.cgPath, color.cgColor)
        }
    }
    
    func startAnimation() {
        let paths = [path1, path2, path3, path4]
        
        var layers:[CALayer] = []
        
        for path in paths {
            let layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.strokeEnd = 0
            layer.strokeColor = path.cgColor
            layer.lineWidth = 15
            layer.fillColor = UIColor.clear.cgColor
            
            layers.append(layer)
        }
        
        let duration: TimeInterval = 0.5
        
        layers.enumerated().forEach { offset, layer in
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            
            animation.beginTime = duration * TimeInterval(offset)
            animation.toValue = 1
            animation.duration = duration
            animation.fillMode = kCAFillModeForwards
            
            let group = CAAnimationGroup()
            group.animations = [animation]
            group.isRemovedOnCompletion = false
            group.duration = CFTimeInterval(layers.count + 1) * duration
            group.fillMode = kCAFillModeForwards
            group.repeatCount = .infinity
            
            layer.add(group, forKey: "group")
            self.layer.addSublayer(layer)
        }
    }
    
    func endAnimation() {
        self.layer.sublayers?.removeAll()
        self.layer.transform = CATransform3DIdentity
    }
    
    // anchor 세팅
    func anchorSetting(view:UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
