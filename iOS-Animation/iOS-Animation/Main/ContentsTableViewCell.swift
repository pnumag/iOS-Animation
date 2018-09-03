//
//  ContentsTableViewCell.swift
//  iOS-Animation
//
//  Created by 박길남 on 2018. 9. 3..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import UIKit

class ContentsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    var vc:UIViewController = UIViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(data:cellData) {
        self.titleLabel.text = data.title
        self.vc = data.vc
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
