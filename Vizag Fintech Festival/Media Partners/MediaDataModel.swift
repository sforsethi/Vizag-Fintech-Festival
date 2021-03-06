//
//  MediaDataModel.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 16/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import Foundation

class Media : Codable   {
    
    let mediaPhotoURL : String
    let thumb : String
    
    init(mediaPhotoURL : String, thumb : String) {
        self.mediaPhotoURL = mediaPhotoURL
        self.thumb = thumb
    }
    
}
