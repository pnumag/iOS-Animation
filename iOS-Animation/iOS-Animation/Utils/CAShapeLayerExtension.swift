//
//  CAShapeLayerExtension.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension CAShapeLayer {
    
    @discardableResult
    func createRectangleLayer(size:CGSize, color: UIColor) -> Self{
        path = getRectanglePath(size: size).cgPath
        backgroundColor = nil
        fillColor = color.cgColor
        frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        return self
    }
    
    private func getRectanglePath(size:CGSize) -> UIBezierPath {
        let path = UIBezierPath().move(x: 0, y: 0)
            .addLine(x: size.width, y: 0)
            .addLine(x: size.width, y: size.height)
            .addLine(x: 0, y: size.height)
        
        return path
    }
    
    @discardableResult
    func setFrame(_ frame:CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult
    func addAnimation(_ animation:CAKeyframeAnimation, forKey: String) -> Self {
        self.add(animation, forKey: forKey)
        return self
    }
    
    func addToSuperLayer(_ superLayer: CALayer) {
        superLayer.addSublayer(self)
    }
}

