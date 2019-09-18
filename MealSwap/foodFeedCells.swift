//
//  foodFeedCells.swift
//  MealSwap
//
//  Created by HGPMAC78 on 7/28/19.
//  Copyright © 2019 HGPMAC78. All rights reserved.
//

import UIKit

class foodFeedCells: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodImageDescription: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
