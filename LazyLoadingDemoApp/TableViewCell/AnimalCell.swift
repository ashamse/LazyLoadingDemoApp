//
//  AnimalCell.swift
//  LazyLoadingDemoApp
//
//  Created by Prabhu Patil on 30/07/21.
//

import UIKit

class AnimalCell: UITableViewCell {

    @IBOutlet var animalName : UILabel!
    @IBOutlet var animalImage : LazyLoading!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
