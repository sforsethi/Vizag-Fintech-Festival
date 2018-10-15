//
//  File.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 11/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class Speaker: Codable  {
    var name : String
    var designation : String
    var photoUrl : String?
    var linkedIn : String?
    
    init(name : String, designation : String, photoUrl : String, linkedIn : String) {
        self.name = name
        self.designation = designation
        self.photoUrl = photoUrl
        self.linkedIn = linkedIn
    }
}
