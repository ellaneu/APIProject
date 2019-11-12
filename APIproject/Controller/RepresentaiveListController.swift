//
//  RepresentaiveListController.swift
//  APIproject
//
//  Created by Ella  Neumarker on 11/11/19.
//  Copyright © 2019 Ella Neumarker. All rights reserved.
//

import Foundation

enum RepresentativeListError: Error {
    case failed
}

protocol RepresentativeListController {
    func getRepresentativeList(completion: @escaping (Result<RepresentativeList, RepresentativeListError>) -> Void)
}
