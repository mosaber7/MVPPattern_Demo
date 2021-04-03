//
//  File.swift
//  MVP_Demo
//
//  Created by Saber on 04/04/2021.
//

import Foundation

extension SpacesVC: SpacesView{
    
    
    func ShowIndicator() {
        // show indicator
    }
    
    func hideIndicator() {
        //hide idicator
    }
    
    func fetchingDataSourse() {
        tableView.reloadData()
    }
    
    func shoeError(error: Error) {
        print(error)
    }
    
    
}
