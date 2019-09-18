//
//  friendRequestCells.swift
//  MealSwap
//
//  Created by HGPMAC78 on 7/27/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit

class friendRequestCells: UITableViewCell {
        
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var userDIstance: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
