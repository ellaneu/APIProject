//
//  RepresentativesModel.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/11/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

struct RepresentativeList: Codable {
    var results: [RepresentativeListItem]
}

struct RepresentativeListItem: Codable {
    var name: String
    var party: String
    var state: String
    var district: String
    var phone: String
    var office: String
    var link: URL
     
}
