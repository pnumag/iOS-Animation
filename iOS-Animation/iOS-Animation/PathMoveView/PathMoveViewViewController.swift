//
//  PathMoveViewViewController.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class PathMoveViewViewController: UIViewController {

    var path:UIBezierPath?
    
    var aniView:PathMoveView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = self.view.convert((touch?.location(in: self.view))!, to: self.view)
        
        aniView = PathMoveView(size: CGSize(width: 20, height: 20))
        self.view.addSubview(aniView!)
        aniView?.center = location
        
        path = UIBezierPath()
        path?.move(to:location)
    }
    
    open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = self.view.convert((touch?.location(in: self.view))!, to: self.view)
        
        path?.addLine(to: location)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        aniView?.startAnimation(path: path!)
        
        path = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
