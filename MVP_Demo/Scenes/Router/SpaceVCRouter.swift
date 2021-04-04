//
//  SpaceVCRouter.swift
//  MVP_Demo
//
//  Created by Saber on 04/04/2021.
//

import UIKit


class SpaceVCRouter{
    
    
    class func createSpaceVC() -> UINavigationController{
         
        let spacesVC =  mainStoryboard.instantiateViewController(identifier: "SpacesVC")
        let navigationController = UINavigationController(rootViewController: spacesVC)
        
        guard let spaceView = navigationController.children.first as? SpacesView else{
            fatalError("can't find spaceView")
        }
        let interactor = SpacesInteractor()
        let router = SpaceVCRouter()
        let presenter = SpaceVCPresenter(view: spaceView, interactor: interactor, router: router)
        spaceView.presenter = presenter
        
        return navigationController
    }
    
    class var mainStoryboard: UIStoryboard{
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
