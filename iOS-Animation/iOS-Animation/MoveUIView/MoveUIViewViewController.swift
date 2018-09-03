//
//  MoveUIViewViewController.swift
//  iOS-Animation
//
//  Created by 박길남 on 2018. 9. 3..
//  Copyright © 2018년 swieeft. All rights reserved.
//

/* ---------------------------------------------------
 MoveUIView에서는 UIView를 마우스 클릭 후 드래그 시
 설정 된 애니메이션이 UIView의 위치에 따라 상태가 변경 되도록
 애니메이션을 적용해보았습니다.
--------------------------------------------------- */

import UIKit

class MoveUIViewViewController: UIViewController {

    var moveView:MoveView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.moveView = MoveView(frame: CGRect(x: self.view.center.x - 100, y: self.view.center.y, width: 20, height: 20))
        
        self.moveView.backgroundColor = UIColor.blue
        
        self.moveView.setAnimation(duration: 10.0, curve: .easeInOut)
        self.moveView.animation.addAnimations {
            self.changeColorAnimation()
            self.rotationAnimation()
        }
        
        if self.view.subviews.count < 1 {
            self.view.addSubview(self.moveView)
        }
    }
    
    func changeColorAnimation() {
        self.moveView.center.x = 250
        self.moveView.backgroundColor = UIColor.red
    }
    
    func rotationAnimation() {
//        self.moveView.transform = CGAffineTransform(rotationAngle: 360)
        
        var rotation:CATransform3D = CATransform3DIdentity

        rotation = CATransform3DRotate(rotation, 180, 0, 1, 0)
        self.moveView.layer.transform = rotation
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
