//
//  AgendaDataModel.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 17/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import Foundation

class Agenda : Codable  {
    
    var status : String!
    var agenda_date : String!
    var title : String!
    var subtitle : String!
    var subtitlediscription : String!
    var host : String!
    var discription : String!
    var performerName : String!
    var keynoteName : String!
    var keynoteDes : String!
    var panelistName = [String]()
    var panelistDes = [String]()
    var other1 : String!
    var other2 : String!
    var other3 : String!
    var other4 : String!
    var moderatorName : String!
    var moderatorDes : String!
    
    init(status : String,agenda_date : String,title : String,subtitle : String,subtitlediscription : String,host : String,discription : String,performerName: String,keynoteName : String, keynoteDes : String,moderatorName : String, moderatorDes : String,panelistName: [String],panelistDes : [String], other1 : String,other2 : String, other3 : String,other4 : String) {
        
        self.status = status
        self.agenda_date = agenda_date
        self.title = title
        self.subtitle = subtitle
        self.subtitlediscription = subtitlediscription
        self.keynoteName = keynoteName
        self.keynoteDes = keynoteDes
        self.moderatorName = moderatorName
        self.moderatorDes = moderatorDes
        self.discription = discription
        self.performerName = performerName
        self.other1 = other1
        self.other2 = other2
        self.other3 = other3
        self.other4 = other4
        self.panelistName = panelistName
        self.panelistDes = panelistDes
      
    }
    
    
    
}
