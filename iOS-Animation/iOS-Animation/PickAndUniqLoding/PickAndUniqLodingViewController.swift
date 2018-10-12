//
//  PickAndUniqLodingViewController.swift
//  iOS-Animation
//
//  Created by 박길남 on 12/10/2018.
//  Copyright © 2018 swieeft. All rights reserved.
//

import UIKit

class PickAndUniqLodingViewController: UIViewController {

    lazy private var activityIndicator: CustomActivityIndicatorView = {
        return CustomActivityIndicatorView(size: CGSize(width: 150, height: 150))
    }()
    
    @IBOutlet weak var onoffButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.addToSuperView(superview: self.view)
        activityIndicator.stopAnimating()
    }

    @IBAction func onActivityIndicatorOnOff(_ sender: Any) {
        guard let title = onoffButton.title(for: .normal) else {
            return
        }
        
        if title == "Start" {
            onoffButton.setTitle("Stop", for: .normal)
            activityIndicator.startAnimating()
        } else {
            onoffButton.setTitle("Start", for: .normal)
            activityIndicator.stopAnimating()
        }
        
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
