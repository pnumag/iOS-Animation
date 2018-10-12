//
//  UIBezierPathExtention.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension UIBezierPath {
    
    func move(x:CGFloat, y:CGFloat) -> Self {
        move(to: CGPoint(x: x, y: y))
        return self
    }
    
    func addLine(x:CGFloat, y:CGFloat) -> Self {
        addLine(to: CGPoint(x: x, y: y))
        return self
    }
    
    func addArc(centerX:CGFloat, centerY:CGFloat, radius:CGFloat, start:CGFloat, end:CGFloat, clockwise:Bool) -> Self {
        addArc(withCenter: CGPoint(x: centerX, y: centerY), radius: radius, startAngle: start, endAngle: end, clockwise: clockwise)
        return self
    }
    
    func setFill() -> Self {
        fill()
        return self
    }
}
