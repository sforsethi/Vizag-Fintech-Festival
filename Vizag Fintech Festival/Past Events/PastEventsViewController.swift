//
//  PastEventsViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 17/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class PastEventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {

    

    
    let URL_PAST_EVENT="https://www.vizagfintechfestival.com/fintech-app/past-event.json"
    var pasts : [Past] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        getSpeakerData(url: URL_PAST_EVENT)

    }
    
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
        while (i < 3) {
            
            var temp1 = json[i]["category"].stringValue
            print(temp1)
            
            var temp2 = [String]()
            var j = 0
            while(j < 4)   {
                let temp3 = json[i]["list"][j]["thumb"].stringValue
                temp2.append(temp3)
               j += 1
            }
            print(temp2)
            let obj = Past(name: temp1, images: temp2)
            pasts.append(obj)
            i += 1
            collectionView.reloadData()
        }
        self.collectionView.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return pasts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PastEventsCell", for: indexPath) as! PastEventsCell
        cell.eventName!.text = pasts[indexPath.row].name
        if let imageURL = URL(string: pasts[indexPath.row].images[0]) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.image1!.image = image
                    }
                }
            }
        }
        
        if let imageURL = URL(string: pasts[indexPath.row].images[1]) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.image2!.image = image
                    }
                }
            }
        }
        
        if let imageURL = URL(string: pasts[indexPath.row].images[2]) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.image3!.image = image
                    }
                }
            }
        }
        
        
        if let imageURL = URL(string: pasts[indexPath.row].images[3]) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.image4!.image = image
                    }
                }
            }
        }
        
        
        return cell
    }

}
