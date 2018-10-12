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
        setMoveViewData()
        setPickAndUniqIconData()
    }
    
    private static func setMoveViewData() {
        guard let vc = MoveUIViewViewController.storyboardInstance() else {
            return
        }
        
        let data = cellData(title: "MoveView", vc: vc)
        cells.append(data)
    }
    
    private static func setPickAndUniqIconData() {
        guard let vc = PickAndUniqIconViewController.storyboardInstance() else {
            return
        }
        
        let data = cellData(title: "Pick&Uniq Icon", vc: vc)
        cells.append(data)
    }
}
