//
//  SupportingAssociationsList.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 16/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SupportingAssociationsList: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate {

    var supports1 : Supporting1!
    var supports2 : Supporting2!
    var supportsMain1 : Supporting1!
    var imageFICCI : String! = nil
    var imageSecond = ["String"]
    var a = ["https://www.vizagfintechfestival.com/images/logo/asia_cloud.jpg", "https://www.vizagfintechfestival.com/images/logo/bfi.png", "https://www.vizagfintechfestival.com/images/logo/CySI.png", "https://www.vizagfintechfestival.com/images/logo/ilan_logo.jpg", "https://www.vizagfintechfestival.com/images/logo/iod-logo.jpg", "https://www.vizagfintechfestival.com/images/logo/IVCA-Logo-Ver-15.jpg", "https://www.vizagfintechfestival.com/images/logo/Mumbai-Angels-Network-Logo.png", "https://www.vizagfintechfestival.com/images/logo/World-Fintech-Association.png"]

    let URL_SUPPORTING_ASSOCIATION="https://www.vizagfintechfestival.com/fintech-app/supporting-associations.json"
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getSpeakerData(url: URL_SUPPORTING_ASSOCIATION)
            }
    

    func getSpeakerData(url : String)   {
        Alamofire.request(url, method: .post).responseJSON { response in
            if response.result.isSuccess    {
                print("Success!")
                
                let speakerData : JSON = JSON(response.result.value!)
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
                self.updateSpeakerData(json : speakerData)
                self.collectionView.reloadData()
            }
        }
    }
    
   public func updateSpeakerData(json : JSON)  {

        
        let cat1 = json[0]["category"].stringValue
        let imageA = json[0]["list"][0]["thumb"].stringValue
        let url = json[0]["list"][0]["url"].stringValue
        imageFICCI = imageA
        supports1 = Supporting1(cat: cat1, image: imageA, url: url)
        supportsMain1 = supports1
//        print(supports1.cat1)
//        print(supports1.imageA!)
        let cat2 = json[1]["category"].stringValue
        
        var urls2 = [String]()
        var i = 0
        while i <= 7 {
            var imageB = json[1]["list"][i]["thumb"].stringValue
            var url2 = json[1]["list"][i]["url"].stringValue
            imageSecond.append(imageB)
            urls2.append(url2)
            i += 1
        }
        print(imageSecond)
    print(urls2)
        self.collectionView.reloadData()
        supports2 = Supporting2(cat2: cat2, imageB: imageSecond, url2: urls2)

        
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // print(supportsMain1.cat1)
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0  {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "SupportingAssociatesCell1", for: indexPath) as! SupportingAssociatesCell1
            cell1.supportingCatA!.text = "INDUSTRIAL PARTNER"

            if let imageURL = URL(string: "https://www.vizagfintechfestival.com/images/logo/ficci-LOGO.JPG") {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell1.supportingImageA!.image = image
                        }
                    }
                }
            }
            
            return cell1
    }
        else{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "SupportingAssociatesCell2", for: indexPath) as! SupportingAssociatesCell2
            cell2.supportingCatB!.text = supports2?.cat2
            
            if let imageURL = URL(string: a[0]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image1.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[1]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image2.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[2]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image3.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[3]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image4.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[4]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image5.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[5]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image6.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[6]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image7.image = image
                        }
                    }
                }
            }
            
            if let imageURL = URL(string: a[7]) {
                DispatchQueue.global().async {
                    let data = try? Data(contentsOf: imageURL)
                    if let data = data {
                        let image = UIImage(data: data)
                        DispatchQueue.main.async {
                            cell2.image8.image = image
                        }
                    }
                }
            }
  
            
            
            return cell2
        }
    

    }
}


