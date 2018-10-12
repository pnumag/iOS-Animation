//
//  ViewController.swift
//  iOS-Animation
//
//  Created by 박길남 on 2018. 9. 3..
//  Copyright © 2018년 swieeft. All rights reserved.
//

import UIKit

protocol StoryboardName: class {
    
}

extension StoryboardName where Self:UIViewController {
    static var storyboardName: String {
        return String(describing: self)
    }
}

extension UIViewController: StoryboardName {
    static func storyboardInstance<T:UIViewController>() -> T? {
        print(self.storyboardName)
        
        let vc = UIStoryboard(name: self.storyboardName, bundle: nil).instantiateInitialViewController() as? T
        return vc
    }
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        Cells.setCells()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cells.cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ContentsTableViewCell
        
        if Cells.cells.count <= indexPath.row {
            return cell
        }
        
        let data = Cells.cells[indexPath.row]
        cell.setCell(data: data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! ContentsTableViewCell
        
        cell.vc.title = cell.titleLabel.text
        
        self.navigationController!.pushViewController(cell.vc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

