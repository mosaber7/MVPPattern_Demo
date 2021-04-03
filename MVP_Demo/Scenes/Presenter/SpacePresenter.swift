//
//  SpacePresenter.swift
//  MVP_Demo
//
//  Created by Saber on 03/04/2021.
//

import Foundation

protocol SpacesView: class {
    func ShowIndicator()
    func hideIndicator()
    func fetchingDataSourse()
    func shoeError(error: Error)
    
}

protocol SpaceCellView {
    func displayCellName(name:String)
    func displayCellPrice(price: Int)
    func displayCellLocation(location:String)
    }


class SpaceVCPresenter {
    private weak var view: SpacesView?
    private let interactor = SpacesInteractor()
    private var spaces = [Space]()
    
    func viewDidLoad(){
        getSpaces()
    }
    
    init(view: SpacesView) {
        self.view = view
    }
    func getSpaces(){
        interactor.getSpaces { (result) in
            self.view?.ShowIndicator()
            switch result{
            
            case .success(let spaces):
                self.view?.hideIndicator()
                self.spaces = spaces
                print(spaces.count)
                self.view?.fetchingDataSourse()

            case .failure(let error):
                self.view?.hideIndicator()
                self.view?.shoeError(error: error)
            }
        }
    }
    
    func getSpacesCount()->Int{
        self.spaces.count
    }
    
    func configureSpaceCell(cell: SpaceCellView, at index: Int){
        let space = spaces[index]
        cell.displayCellLocation(location: space.address)
        cell.displayCellName(name: space.name)
        cell.displayCellPrice(price: space.price)
    }
    
    
}
