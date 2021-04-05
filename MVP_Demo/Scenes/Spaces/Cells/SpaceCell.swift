//
//  SpaceCell.swift
//  MVP_Demo
//
//  Created by Saber on 04/04/2021.
//

import UIKit

class SpaceCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SpaceCell: SpaceCellView{
    
    func displayCellName(name: String) {
        nameLabel.text = name
    }
    
    func displayCellPrice(price: Int) {
        priceLabel.text = String(price)
    }
    
    func displayCellLocation(location: String) {
        locationLabel.text = location
    }
    
    
}
