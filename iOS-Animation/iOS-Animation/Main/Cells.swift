//
//  Cells.swift
//  iOS-Animation
//
//  Created by 박길남 on 2018. 9. 3..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import Foundation
import UIKit

struct cellData {
    var title:String
    var vc:UIViewController
    
    init(title:String, vc:UIViewController) {
        self.title = title
        self.vc = vc
    }
}

class Cells {
    static var cells:[cellData] = []
    
    static func setCells() {
        guard let moveViewVC = MoveUIViewViewController.storyboardInstance() else {
            return
        }
        
        let moveViewData = cellData(title: "MoveView", vc: moveViewVC)
        cells.append(moveViewData)
    }
}
