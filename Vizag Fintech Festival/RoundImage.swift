//
//  RoundImage.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 16/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
}
