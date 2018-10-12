//
//  PathMoveView.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class PathMoveView: UIView {
    
    init(size: CGSize) {
        let frame = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        
        super.init(frame: frame)
        self.backgroundColor = .random()
        
        self.clipsToBounds = true
        self.layer.cornerRadius = 0.5 * self.frame.size.width
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startAnimation(path:UIBezierPath) {

        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = 5
        animation.fillMode = kCAFillModeForwards
        animation.calculationMode = kCAAnimationLinear
        animation.repeatCount = .infinity
        animation.autoreverses = true
        
        self.layer.add(animation, forKey: "ani")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
