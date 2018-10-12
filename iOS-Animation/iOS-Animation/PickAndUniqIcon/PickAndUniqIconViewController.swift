//
//  PickAndUniqIconViewController.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class PickAndUniqIconViewController: UIViewController {

    @IBOutlet weak var IconView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onStartAnimation(_ sender: Any) {
        let animationView = PickAndUniqIconView(frame: IconView.bounds)
        IconView.addSubview(animationView)
        
        animationView.startAnimation()
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
