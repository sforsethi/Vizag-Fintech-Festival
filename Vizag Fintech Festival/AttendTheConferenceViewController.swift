//
//  AttendTheConferenceViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 12/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class AttendTheConferenceViewController: UIViewController {
    @IBAction func agendaButton(_ sender: Any) {
        performSegue(withIdentifier: "attendConferenceToAgenda", sender: Any?.self)
    }
    
    @IBAction func registerationButton(_ sender: Any) {
        if let url = URL(string: "https://www.vizagfintechfestival.com/registration.php") {
            UIApplication.shared.open(url, options: [:])
        }
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
