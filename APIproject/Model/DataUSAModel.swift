//
//  DataUSAModel.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/11/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

struct DataUSAList {
    var data: [DataUSAListItem]
}

struct DataUSAListItem {
    var IDNation: String
    var nation: String
    var IDYear: String
    var year: String
    var population: Int
    var slugNation: String
    
    enum CodingKeys: String, CodingKey {
        case IDNation = "ID Nation"
        case nation
        case IDYear = "ID Year"
        case population
        case slugNation = "Slug Nation"
    }
}
