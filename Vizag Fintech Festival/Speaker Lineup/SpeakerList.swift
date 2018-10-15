//
//  SpeakerList.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 11/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class SpeakerList: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    final let SPEAKER_URL = "https://www.vizagfintechfestival.com/fintech-app/speaker.json"
    let BASEIMAGEURL = "https://www.vizagfintechfestival.com/images/experts/new/"
    var speakers : [Speaker] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        self.tableView.rowHeight = 230
        //downloadJson()
        getSpeakerData(url: SPEAKER_URL)
        // Do any additional setup after loading the view.
        //tableView.register(UINib(nibName: "SpeakerCell", bundle: nil), forCellReuseIdentifier: "speakerCell")
        tableView.reloadData()
    }
    // MARK - Networking
    
    
    
//    func downloadJson() {
//        guard let downloadURL = SPEAKER_URL else { return }
//        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
//            guard let data = data, error == nil, urlResponse != nil else {
//                print("something is wrong")
//                return
//            }
//            print("downloaded")
//            do
//            {
//                let decoder = JSONDecoder()
//                let speakers = try decoder.decode(Speakers.self, from: data)
//                print(speakers.speakers[0].name)
//                print(speakers)
//            } catch {
//                print("something wrong after downloaded")
//            }
//            }.resume()
//    }
    
    
    
    func getSpeakerData(url : String)   {
        Alamofire.request(url, method: .post).responseJSON { response in
            if response.result.isSuccess    {
                print("Success!")

                let speakerData : JSON = JSON(response.result.value!)
                //print(speakerData)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
                self.updateSpeakerData(json: speakerData)
                self.tableView.reloadData()
            }
        }
    }

    func updateSpeakerData(json : JSON)    {

        var i = 0
        while(i < 58)    {

            var temp1 = json["speaker"][i]["name"].stringValue
            var temp2 = json["speaker"][i]["designation"].stringValue
            var temp3 = BASEIMAGEURL + json["speaker"][i]["photoUrl"].stringValue
            var temp4 = json["speaker"][i]["linkedIn"].stringValue

            let obj = Speaker(name: temp1, designation: temp2, photoUrl: temp3, linkedIn: temp4)

            speakers.append(obj)
            i += 1
            tableView.reloadData()
        }
            self.tableView.reloadData()
        
        
        print(speakers[2].designation)
        print(speakers[6].photoUrl!)
        print(speakers.count)

    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return speakers.count
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//         let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell", for: indexPath) as! SpeakerCell
//
//         cell.speakerName?.text = speakers[indexPath.row].name
//         cell.speakerDesignation?.text = speakers[indexPath.row].designation
//
////        print(speakers.count)
////        print(speakers[indexPath.row].name)
////        tableView.reloadData()
//
//        return cell
//
//    }
}

extension SpeakerList: UITableViewDataSource,UITableViewDelegate    {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell") as! SpeakerCell
        
        let name = speakers[indexPath.row].name
        cell.speakerName!.text = name
        let designation = speakers[indexPath.row].designation
        cell.speakerDesignation!.text = designation

        if let imageURL = URL(string: speakers[indexPath.row].photoUrl!) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.speakerImage!.image = image
                    }
                }
            }
        }

        
        
        return cell
    }
    
    
}
    

