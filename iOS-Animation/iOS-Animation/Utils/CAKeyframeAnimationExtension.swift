//
//  CAKeyframeAnimation.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension CAKeyframeAnimation {
    
    @discardableResult
    func setValues(flags:[Int], x:CGFloat, y:CGFloat) -> Self {
        var arr:[NSValue] = []
        
        for flag in flags {
            switch flag {
            case 1:
                arr.append(NSValue(caTransform3D: CATransform3DMakeTranslation(x, 0, 0)))
            case 2:
                arr.append(NSValue(caTransform3D: CATransform3DMakeTranslation(0, y, 0)))
            case 3:
                arr.append(NSValue(caTransform3D: CATransform3DMakeTranslation(x, y, 0)))
            default:
                arr.append(NSValue(caTransform3D: CATransform3DMakeTranslation(0, 0, 0)))
            }
        }
        
        self.values = arr
        
        return self
    }
    
    @discardableResult
    func setDuration(_ duration:CFTimeInterval) -> Self {
        self.duration = duration
        
        return self
    }
    
    @discardableResult
    func setRepeatCount(_ repeatCount:Float) -> Self {
        self.repeatCount = repeatCount
        
        return self
    }
    
    @discardableResult
    func setIsRemovedOnCompletion(_ isRemovedOnCompletion:Bool) -> Self {
        self.isRemovedOnCompletion = isRemovedOnCompletion
        
        return self
    }
}
