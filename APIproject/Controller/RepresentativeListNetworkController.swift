//
//  RepresentativeListNetworkController.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/11/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

class RepresentativeListNetworkController: RepresentativeListController {
    let baseURL = URL(string: "https://whoismyrepresentative.com/api")!
    let session = URLSession.shared
    let path = "getall_mems.php"
    
    func getRepresentativeList(completion: @escaping (Result<RepresentativeList, RepresentativeListError>) -> Void) {
        let representativeListURL = baseURL.appendingPathComponent(path)
        
        let request = URLRequest(url: representativeListURL)
        
        let task = session.dataTask(with: request) { (data, response, error) in
            guard error == nil else { return completion(.failure(.failed)) }
            
            if (response as? HTTPURLResponse)?.statusCode == 200,
                let data = data {
                let decoder = JSONDecoder()
                
                do {
                    let representativeList = try decoder.decode(RepresentativeList.self, from: data)
                    
                    completion(.success(representativeList))
                } catch {
                    print(error)
                    completion(.failure(.failed))
                }
            } else {
                completion(.failure(.failed))
            }
        }
        
        task.resume()
        
    }
    
}
