//
//  AgendaCell.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 18/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class AgendaCell: UICollectionViewCell {
    
    @IBOutlet weak var hostTitle: UILabel!
    @IBOutlet weak var keynoteView: UIView!
    @IBOutlet weak var keynoteTitle: UILabel!
    @IBOutlet weak var keynoteName: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var keynoteDes: UILabel!
    @IBOutlet weak var performerLabel: UILabel!
    
    @IBOutlet weak var performerTitle: UILabel!
    @IBOutlet weak var performerView: UIView!
    @IBOutlet weak var performerName: UILabel!
    @IBOutlet weak var hostName: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var subtitleDescription: UILabel!
    
    func hideItems()    {
        performerView.isHidden = true
        performerTitle.isHidden = true
        performerLabel.isHidden = true
        performerName.isHidden = true
        hostName.isHidden = true
        keynoteDes.isHidden = true
        keynoteName.isHidden = true
        keynoteTitle.isHidden = true
        keynoteView.isHidden = true
        hostTitle.isHidden = true
    }
    
    func showPerformer()  {
        performerView.isHidden = false
        performerTitle.isHidden = false
        performerLabel.isHidden = false
        performerName.isHidden = false
    }
    
    func showKeynoteSpeaker()   {
        keynoteDes.isHidden = false
        keynoteName.isHidden = false
        keynoteTitle.isHidden = false
        keynoteView.isHidden = false
    }
    func showHost() {
        hostName.isHidden = false
        hostTitle.isHidden = false
    }
    
}
