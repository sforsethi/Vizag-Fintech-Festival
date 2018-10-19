//
//  ConferenceAgendaViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 17/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ConferenceAgendaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    var agendas1 : [Agenda] = []
    let URL_AGENDA_PART_1="https://www.vizagfintechfestival.com/fintech-app/agendapart1.json"

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        getSpeakerData(url: URL_AGENDA_PART_1)

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
        while (i<21) {
            
            let temp0 = json["agenda"][i]["status"].stringValue
            let temp1 = json["agenda"][i]["agenda_date"].stringValue
            let temp2 = json["agenda"][i]["title"].stringValue
            let temp3 = json["agenda"][i]["subtitle"].stringValue
            let temp4 = json["agenda"][i]["subtitlediscription"].stringValue
            let temp5 = json["agenda"][i]["host"].stringValue
            let temp6 = json["agenda"][i]["performer"][0]["name"].stringValue
            let temp7 = json["agenda"][i]["discription"].stringValue
            var temp8 = ""
            var temp81 = ""
                if json["agenda"][i]["keyspeaker"] != []
{             temp8 = json["agenda"][i]["keyspeaker"][0]["name"].stringValue
             temp81 = json["agenda"][i]["keyspeaker"][0]["designation"].stringValue
    
            }
            let temp9 = json["agenda"][i]["moderator"].array
            let temp10 = json["agenda"][i]["panelists"].array
            let temp11 = json["agenda"][i]["presenters"].array
            let temp12 = json["agenda"][i]["other1"].stringValue
            let temp13 = json["agenda"][i]["other2"].stringValue
            let temp14 = json["agenda"][i]["other3"].stringValue
            let temp15 = json["agenda"][i]["other4"].stringValue
            
            print(temp81)
            print(temp8)
            let obj = Agenda(status: temp0, agenda_date: temp1, title: temp2, subtitle: temp3, subtitlediscription: temp4,host: temp5, discription : temp7 ,performerName: temp6,keynoteName: temp8, keynoteDes: temp81, other1 : temp12, other2 : temp13 , other3 : temp14, other4 : temp15 )

            agendas1.append(obj)
          //  print(agendas1[i].host)
            i += 1
        }
        print(agendas1[5].host)
        
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return agendas1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AgendaCell", for: indexPath) as! AgendaCell
        
        cell.hideItems()
        cell.timeLabel!.text = agendas1[indexPath.row].agenda_date
        cell.titleLabel!.text = agendas1[indexPath.row].title
        cell.subtitleLabel!.text = agendas1[indexPath.row].subtitle
        cell.subtitleDescription!.text = agendas1[indexPath.row].subtitlediscription
        
        if agendas1[indexPath.row].host != ""  {
            cell.showHost()
        cell.hostName!.text = agendas1[indexPath.row].host
        }
        if agendas1[indexPath.row].performerName != ""  {
            
            cell.showPerformer()
            cell.performerName!.text = agendas1[indexPath.row].performerName
        }
        
        if agendas1[indexPath.row].keynoteName != ""    {
            
            cell.keynoteName!.text = agendas1[indexPath.row].keynoteName
            cell.keynoteDes!.text = agendas1[indexPath.row].keynoteDes
            cell.showKeynoteSpeaker()

        }
        


        return cell
    }
}
