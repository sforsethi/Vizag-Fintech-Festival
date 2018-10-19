//
//  PastEventsDataModel.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 17/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import Foundation

class Past : Codable    {
    
    var name : String
    var images = [String]()
    
    init(name : String, images : [String]) {
        self.name = name
        self.images = images
    }
    
}
