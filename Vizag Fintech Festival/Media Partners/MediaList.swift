//
//  MediaList.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 16/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MediaList: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    @IBOutlet weak var collectionView: UICollectionView!
    let URL_MEDIA_PARTNER="https://www.vizagfintechfestival.com/fintech-app/media_partners.json";
    var medias : [Media] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        getSpeakerData(url: URL_MEDIA_PARTNER)

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
        while(i <= 18)    {
            
            var temp1 = json[i]["thumb"].stringValue
            var temp2 = json[i]["url"].stringValue
            
            let obj = Media(mediaPhotoURL: temp1, thumb: temp2)
            
            medias.append(obj)
            i += 1
            collectionView.reloadData()
            
        }
        self.collectionView.reloadData()
//        speakersMain = speakers2
//        print(speakers2[0].name)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(medias.count)
        return medias.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MediaCell", for: indexPath) as! MediaCell
        
        if let imageURL = URL(string: medias[indexPath.row].mediaPhotoURL) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.mediaImage!.image = image
                    }
                }
            }
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let url = URL(string: medias[indexPath.row].thumb) {
            UIApplication.shared.open(url, options: [:])
        }
    }

}
