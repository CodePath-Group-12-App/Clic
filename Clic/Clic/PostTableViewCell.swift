//
//  PostTableViewCell.swift
//  Clic
//
//  Created by Aashi on 11/15/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var activityDescriptionLabel: UILabel!
    @IBOutlet weak var activityImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
