//
//  UIColorExtension.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static let squareKobiColor = UIColor(red: 0.91, green: 0.63, blue: 0.72, alpha: 1)
    static let squareAmberColor = UIColor(red: 1, green: 0.76, blue: 0, alpha: 1)
    static let squareGreenGrapesColor = UIColor(red: 0.74, green: 0.81, blue: 0.24, alpha: 1)
    static let squareRobinsEggBlueColor = UIColor(red: 0.01, green: 0.79, blue: 0.79, alpha: 1)
    
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
