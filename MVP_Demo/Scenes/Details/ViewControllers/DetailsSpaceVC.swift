//
//  DetailsSpaceVC.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import UIKit

class DetailsSpaceVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    var presenter: DetailsVCPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()

    }
    
    @IBAction func tap(_ sender: UIButton) {
        presenter?.extraTapped()
    }
    
    

}

extension DetailsSpaceVC: DetailsView{
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

