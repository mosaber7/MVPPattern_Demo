//
//  ExtraViewController.swift
//  MVP_Demo
//
//  Created by Saber on 05/04/2021.
//

import UIKit

class ExtraViewController: UIViewController {

    @IBOutlet weak var nameLAbel: UILabel!
    
    var presenter: ExtraPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()

    }
    

}

extension ExtraViewController: ExtraView{
   
    func displayName(name: String) {
        nameLAbel.text = name
    }
    
    
}
