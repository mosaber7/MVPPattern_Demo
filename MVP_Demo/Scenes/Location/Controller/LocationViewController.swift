//
//  LocationViewController.swift
//  MVP_Demo
//
//  Created by Saber on 06/04/2021.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    
    var presenter: LocationVCPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()

    }
    

    @IBAction func back(_ sender: Any) {
        print("BAck Tapped")
        presenter?.dismiss()
    }
}
extension LocationViewController: LocationView{
    
    func presentLocation(location: String) {
        locationLabel.text = location
    }
    
    
}
