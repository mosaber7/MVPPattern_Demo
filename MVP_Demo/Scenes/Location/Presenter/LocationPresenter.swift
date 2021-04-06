//
//  LocationPresenter.swift
//  MVP_Demo
//
//  Created by Saber on 06/04/2021.
//

import Foundation

protocol LocationView : class{
    var presenter: LocationVCPresenter? {set get}
    func presentLocation(location:String)
}

class LocationVCPresenter{
    
    
    private weak var  locationView: LocationView?
    var space: Space
    
    
    init(view: LocationView, space: Space) {
        self.locationView = view
        self.space = space
    }
    func viewDidLoad(){
        displayLocation()
    }
    
    func displayLocation(){
        locationView?.presentLocation(location: space.address)
    }
    func dismiss(){
        LocationVCRouter.dismiss(view: locationView!)
    }
    
    
}
