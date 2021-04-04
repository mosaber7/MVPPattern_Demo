//
//  SpacePresenter.swift
//  MVP_Demo
//
//  Created by Saber on 03/04/2021.
//

import Foundation

protocol SpacesView: class {
    
    var presenter: SpaceVCPresenter?{get set}
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
    private let interactor : SpacesInteractor
    private var spaces = [Space]()
    private let router: SpaceVCRouter
    
    func viewDidLoad(){
        OperationQueue.main.addOperation {
            self.getSpaces()

        }
        self.view?.fetchingDataSourse()
    }
    
    init(view: SpacesView?, interactor: SpacesInteractor, router: SpaceVCRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router

      
    }
    func getSpaces(){
        print("Here")
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
