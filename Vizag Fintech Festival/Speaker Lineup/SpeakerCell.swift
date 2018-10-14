//
//  SpeakerCell.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 13/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class SpeakerCell: UITableViewCell {

    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func linkedinButton(_ sender: Any) {
    }
    @IBOutlet weak var speakerImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
}
