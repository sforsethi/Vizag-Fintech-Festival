//
//  SupportingAssociatesDataModel1.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 16/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import Foundation

class Supporting1 : Codable {
    let cat1 : String
    let imageA : String?
    let url : String?
    
    init(cat:String,image:String,url:String) {
        self.cat1 = cat
        self.imageA = image
        self.url = url
    }
}

class Supporting2 : Codable {
    let cat2 : String
    let imageB : [String]?
    let url2 : [String]?

    init(cat2: String, imageB : [String],url2 : [String] ) {
        self.cat2 = cat2
        self.imageB = imageB
        self.url2 = url2
        
    }


}
