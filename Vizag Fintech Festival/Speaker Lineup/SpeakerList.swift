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


class SpeakerList : UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    
    var speakers2 : [Speaker] = []
    var speakersMain : [Speaker] = []

    @IBOutlet weak var collectionView: UICollectionView!
    final let SPEAKER_URL = "https://www.vizagfintechfestival.com/fintech-app/speaker.json"
    let BASEIMAGEURL = "https://www.vizagfintechfestival.com/images/experts/new/"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        //downloadJson()
        getSpeakerData(url: SPEAKER_URL)

    }
    // MARK - Networking
    
    func getSpeakerData(url : String)   {
        Alamofire.request(url, method: .post).responseJSON { response in
            if response.result.isSuccess    {
                print("Success!")

                let speakerData : JSON = JSON(response.result.value!)
                //print(speakerData)
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
                self.updateSpeakerData(json : speakerData)
                self.collectionView.reloadData()
            }
        }
    }

    func updateSpeakerData(json : JSON)  {

        var i = 0
        while(i <= 58)    {

            let temp1 = json["speaker"][i]["name"].stringValue
            let temp2 = json["speaker"][i]["designation"].stringValue
            let temp3 = BASEIMAGEURL + json["speaker"][i]["photoUrl"].stringValue
            let temp4 = json["speaker"][i]["linkedIn"].stringValue

            let obj = Speaker(name: temp1, designation: temp2, photoUrl: temp3, linkedIn: temp4)

            speakers2.append(obj)
            i += 1
            collectionView.reloadData()
            
        }
        self.collectionView.reloadData()
        speakersMain = speakers2
        print(speakers2[0].name)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print(speakersMain.count)
        return speakersMain.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpeakerCell", for: indexPath) as! SpeakerCell

        cell.speakerName!.text = speakers2[indexPath.row].name
        cell.speakerDesignation!.text = speakers2[indexPath.row].designation
        
        cell.setRounded()
        if let imageURL = URL(string: speakers2[indexPath.row].photoUrl!) {
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
        
        if speakers2[indexPath.row].linkedIn == "null"  {
            cell.linkedInButton.isHidden = true
        }
        else    {
            cell.linkedInButton.isHidden = false
        }
        return cell
        
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let url = URL(string: speakers2[indexPath.row].linkedIn!) {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    
}




    

