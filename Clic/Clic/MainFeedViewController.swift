//
//  MainFeedViewController.swift
//  Clic
//
//  Created by Aashi on 11/15/22.
//

import UIKit
import Parse
import AlamofireImage

class MainFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var postTableView: PostTableViewCell!
    
    override func viewDidLoad() {
        postTableView.dataSource = self
        postTableView.delegate = self
        
        super.viewDidLoad()
        
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
