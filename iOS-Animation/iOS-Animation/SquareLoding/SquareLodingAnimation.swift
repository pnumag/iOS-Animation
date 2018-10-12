//
//  PickAndUniqLodingAnimation.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

class SquareLodingAnimation {
    static func setUpAnimation(in layer: CALayer, size: CGSize) {
        let rectangleSize: CGFloat = size.width / 4
        let duration: CFTimeInterval = 2.0
        let x = size.width / 2 - rectangleSize / 2
        let y = size.height / 2 - rectangleSize / 2
        let frame = CGRect(x: (layer.bounds.size.width / 2) - (size.width / 2) + (x / 2),
                           y: (layer.bounds.size.height / 2) - (size.height / 2) + (y / 2),
                           width: size.width,
                           height: size.height)
        let forKey = "lodingAnimation"
        let layerSize = CGSize(width: rectangleSize, height: rectangleSize)
        
        //square1
        let animation = getAnimation().setValues(flags: [0, 1, 3, 2, 0, 0, 0, 0], x: x, y: y)
            .setDuration(duration)
            .setRepeatCount(HUGE)
            .setIsRemovedOnCompletion(false)
        
        CAShapeLayer().createRectangleLayer(size: layerSize, color: UIColor.squareKobiColor)
            .setFrame(frame)
            .addAnimation(animation, forKey: forKey)
            .addToSuperLayer(layer)
        
        //square2
        animation.setValues(flags: [1, 1, 3, 2, 0, 1, 1, 1], x: x, y: y)
        
        CAShapeLayer().createRectangleLayer(size: layerSize, color: UIColor.squareAmberColor)
            .setFrame(frame)
            .addAnimation(animation, forKey: forKey)
            .addToSuperLayer(layer)
        
        //square3
        animation.setValues(flags: [3, 3, 3, 2, 0, 1, 3, 3], x: x, y: y)
        
        CAShapeLayer().createRectangleLayer(size: layerSize, color: UIColor.squareGreenGrapesColor)
            .setFrame(frame)
            .addAnimation(animation, forKey: forKey)
            .addToSuperLayer(layer)
        
        //square4
        animation.setValues(flags: [2, 2, 2, 2, 0, 1, 3, 2], x: x, y: y)
        
        CAShapeLayer().createRectangleLayer(size: layerSize, color: UIColor.squareRobinsEggBlueColor)
            .setFrame(frame)
            .addAnimation(animation, forKey: forKey)
            .addToSuperLayer(layer)
    }
    
    static private func getAnimation() -> CAKeyframeAnimation {
        let animation = CAKeyframeAnimation(keyPath: "transform")
        
        animation.keyTimes = [0, 0.143, 0.286, 0.429, 0.572, 0.715, 0.858, 1]
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        
        return animation
    }
}
