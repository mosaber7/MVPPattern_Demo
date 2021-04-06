//
//  ExtraPresenter.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import Foundation

protocol ExtraView: class {
    var presenter : ExtraPresenter? {set get}
    func displayName(name: String)
}

class ExtraPresenter{
   
    
    private weak var extraView: ExtraView?
    private let space : Space
    
    
    init(view: ExtraView, space: Space) {
        self.extraView = view
        self.space = space
    }
    
    func viewDidLoad(){
        extraView?.displayName(name: space.name)
    }
    
    func locationTapped(){
        ExtraRouter.navigateToLocationVC(from: extraView!, space: space)
    }
    
    
}
