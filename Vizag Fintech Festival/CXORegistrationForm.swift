//
//  CXORegistrationForm.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 18/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class CXORegistrationForm: UIViewController {
    @IBOutlet weak var companyTextField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
    }
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true)
    }
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
