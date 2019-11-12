//
//  DogsListController.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/12/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

class DogListController {
    
    func fetchItems(matching query: [String: String], completion: @escaping ([DogList]?) -> Void) {
        let baseURL = URL(string: "https://dog.ceo/dog-api/")
        
        guard let url = baseURL?.withQueries(query) else {
            completion(nil)
            print("Unable to build URL with supplied queries.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let decoder = JSONDecoder()
            if let data = data,
                let dogList = try? decoder.decode(DogList.self, from: data) {
                
            }
        }
    }
}
