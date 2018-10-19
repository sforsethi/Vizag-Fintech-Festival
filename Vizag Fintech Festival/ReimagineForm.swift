//
//  ReimagineForm.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 18/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class ReimagineForm: UIViewController {
    @IBAction func submitButton(_ sender: Any) {
    }
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBOutlet weak var dateSelector: UISegmentedControl!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
