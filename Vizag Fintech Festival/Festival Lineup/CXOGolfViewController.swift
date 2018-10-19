//
//  CXOGolfViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 17/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class CXOGolfViewController: UIViewController {

    @IBAction func requestButton(_ sender: Any) {
    }
    @IBAction func faqButton(_ sender: Any) {
        
        if let url = URL(string: "https://www.vizagfintechfestival.com/pdf/cxo-faq.pdf") {
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
