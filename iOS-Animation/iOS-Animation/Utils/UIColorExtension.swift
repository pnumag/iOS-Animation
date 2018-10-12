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
    
    static let iconCyanColor = UIColor(red: 0, green: 0.83137255, blue: 0.89803922, alpha: 1) // icon 하늘색
    static let iconYellowColor = UIColor(red: 0.99607843, green: 0.77647059, blue: 0.03921569, alpha: 1) // icon 노란색
    static let iconPinkColor = UIColor(red: 1, green: 0.22352941, blue: 0.51764706, alpha: 1) // icon 분홍색
    static let iconPurpleColor = UIColor(red: 0.51764706, green: 0.35294118, blue: 0.96470588, alpha: 1) // icon 보라색
    
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}
