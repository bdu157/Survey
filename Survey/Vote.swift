//
//  Vote.swift
//  Survey
//
//  Created by Dongwoo Pae on 4/27/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class Vote {
    var name: String
    var response: String
    
    init(name: String, response: String) {
        self.name = name
        self.response = response
    }
}
