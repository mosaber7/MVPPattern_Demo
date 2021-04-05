//
//  DetailsVCPresenter.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import Foundation


protocol DetailsView: class {
    var presenter: DetailsVCPresenter?{get set}
    func displayCellName(name:String)
    func displayCellPrice(price: Int)
    func displayCellLocation(location:String)
}

class DetailsVCPresenter{
    
    private weak var detailsVc: DetailsView?
    private let space: Space
    
    init(detailsVc: DetailsView?, space:Space) {
        self.detailsVc = detailsVc
        self.space = space
    }
    func viewDidLoad(){
        detailsVc?.displayCellName(name: space.name)
        detailsVc?.displayCellPrice(price: space.price)
        detailsVc?.displayCellLocation(location: space.address)
    }
    
    
    
    
}
