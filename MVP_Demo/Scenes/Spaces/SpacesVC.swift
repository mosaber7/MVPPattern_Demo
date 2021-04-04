//
//  ViewController.swift
//  MVP_Demo
//
//  Created by Saber on 03/04/2021.
//

import UIKit

class SpacesVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: SpaceVCPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "Hello!"
        tableView.register(UINib(nibName: "SpaceCell", bundle: nil), forCellReuseIdentifier: "SpaceCell")
        self.presenter?.getSpaces()
        
       // presenter = SpaceVCPresenter(view: self)
            self.presenter?.viewDidLoad()

        

    }


}

extension SpacesVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter?.getSpacesCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SpaceCell") as? SpaceCell else{
            fatalError("Can't find SpaceCell")
        }
        presenter?.configureSpaceCell(cell: cell, at: indexPath.row)
        return cell
    }
    
    
    
    
}

