//
//  NetworkManager.swift
//  LazyLoadingDemoApp
//
//  Created by Prabhu Patil on 30/07/21.
//

import Foundation

struct AnimalNetworkManager {
    
    func getAnimals (completionHandler: @escaping (AnimalDataModel?) -> ()) {
        
        let animalApiUrl = URL(string: "https://api-dev-scus-demo.azurewebsites.net/api/Animal/GetAnimals")!
        
        URLSession.shared.dataTask(with: animalApiUrl) { (data, response, error) in
            
            if (error == nil && data != nil) {
                do {
                    let result = try JSONDecoder().decode(AnimalDataModel.self, from: data!)
                    completionHandler(result)
                }
                catch let error {
                    debugPrint(error)
                }
            }
        }.resume()
    }
    
}
