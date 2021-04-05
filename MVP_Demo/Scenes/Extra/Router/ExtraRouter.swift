//
//  ExtraRouter.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import UIKit


class ExtraRouter{
    
    class func createExtrVC(space: Space)-> UIViewController{
        let extraVC = mainStoryboard.instantiateViewController(identifier: "ExtraVC")
        if let extraView = extraVC as? ExtraView{
        let presenter = ExtraPresenter(view: extraView, space: space)
            extraView.presenter = presenter
        
        }
        return extraVC
    }
    
    class var mainStoryboard: UIStoryboard{
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    
    
}
