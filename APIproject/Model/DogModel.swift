//
//  DogModel.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/11/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

struct DogList: Codable {
    let results: [DogListItem]
}

struct DogListItem: Codable {
    var url: URL
}
