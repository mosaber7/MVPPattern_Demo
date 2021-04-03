//
//  SpacesInteractor.swift
//  MVP_Demo
//
//  Created by Saber on 03/04/2021.
//

import Foundation
import Alamofire

class SpacesInteractor {
    
    func getSpaces(compeletion: @escaping (Result<[Space], Error>)-> Void){
        guard let url = URL(string: "http://localhost:3000/spaces/") else{
            return
        }
        AF.request(url).validate().responseDecodable { (responce: DataResponse<[Space],AFError>) in
            switch responce.result{
            
            case .success(let spaces):
                compeletion(.success(spaces))
            case .failure(let error):
                compeletion(.failure(error))
            }
        }
        
        
    }
}
