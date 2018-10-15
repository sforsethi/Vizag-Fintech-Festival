//
//  HelpDeskViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 15/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class HelpDeskViewController: UIViewController {

    

    
    let enquiryOptions = ["Visitor Enquiries", "Delegation Enquiries","Sponsor/Exhibitor Enquiry","Other Enquiries"]
    let industryOptions = ["F"]
    
    @IBOutlet weak var enquiryType: UITextField!
    @IBOutlet weak var industryType: UITextField!
    @IBOutlet weak var industryPicker: UIPickerView!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var enquiryPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
 
    
    
}
