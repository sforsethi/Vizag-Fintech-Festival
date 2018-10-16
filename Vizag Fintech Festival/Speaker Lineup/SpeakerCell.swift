//
//  SpeakerCell.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 15/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class SpeakerCell: UICollectionViewCell {
    
    @IBOutlet weak var linkedInButton: UIButton!
    @IBOutlet weak var speakerDesignation: UILabel!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var speakerImage: UIImageView!
    
    func setRounded() {
        
        speakerImage.layer.cornerRadius = self.speakerImage.frame.size.width / 2;
        speakerImage.layer.masksToBounds = true
    }
}
