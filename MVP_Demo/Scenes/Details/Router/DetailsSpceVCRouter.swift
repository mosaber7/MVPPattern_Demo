//
//  DetailsSpceVCRouter.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import UIKit


class DetailsSpaceVCRouter {
    
    class func createDetailsVCRouter(space: Space) -> UIViewController{
        
        let detailsVc = mainStoryboard.instantiateViewController(identifier: "DetailsVC")
        if let detailsView = detailsVc as? DetailsView{
            let presenter = DetailsVCPresenter(detailsVc: detailsView, space: space)
            detailsView.presenter = presenter

        }
  
        return detailsVc
        
    }
    
    class var mainStoryboard: UIStoryboard{
        UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func navigateToExtraVC(from view: DetailsView,space: Space){
        let extraVC = ExtraRouter.createExtrVC(space: space)
        if let ExtraViewVC = view as? UIViewController{
            ExtraViewVC.navigationController?.pushViewController(extraVC, animated: true)
        }
        
        
    }
    
}
