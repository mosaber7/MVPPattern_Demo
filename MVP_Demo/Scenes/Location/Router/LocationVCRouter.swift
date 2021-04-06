//
//  LocationVCRouter.swift
//  MVP_Demo
//
//  Created by Saber on 06/04/2021.
//

import UIKit

class LocationVCRouter{
    
    
    class func createLocationVC(space: Space)-> UIViewController{
        let locationVC = mainStoryboard.instantiateViewController(withIdentifier: "LocationVC")
        
       if let locatioView = locationVC as? LocationView{
        let presenter = LocationVCPresenter(view: locatioView, space: space)
        
        locatioView.presenter = presenter
       }
        return locationVC
        
    }
    class var mainStoryboard: UIStoryboard{
        UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func dismiss(view: LocationView){
        guard let locationVC = view as? UIViewController else{
            print("failed to cast")
            return
        }
        print("dismiss")
        locationVC.navigationController?.popViewController(animated: true)
        
    }
    
}
