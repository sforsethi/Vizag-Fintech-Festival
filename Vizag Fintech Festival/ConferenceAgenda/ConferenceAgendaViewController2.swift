//
//  ConferenceAgendaViewController2.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 20/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ConferenceAgendaViewController2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    var agendas2 : [Agenda] = []
    let URL_AGENDA_PART_2="https://www.vizagfintechfestival.com/fintech-app/agendapart2.json"

    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.delegate = self
        collectionView.dataSource = self
        getSpeakerData(url: URL_AGENDA_PART_2)
        
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
        while (i<11) {
            
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
            let temp9 = json["agenda"][i]["moderator"][0]["name"].stringValue
            let temp91 = json["agenda"][i]["moderator"][0]["designation"].stringValue
            var j = 0
            var temp10 : [String] = []
            var temp11 : [String] = []
            if(json["agenda"][i]["panelists"] != []) {
                while j < json["agenda"][i]["panelists"].count  {
                    let t = json["agenda"][i]["panelists"][j]["name"].stringValue
                    let r = json["agenda"][i]["panelists"][j]["designation"].stringValue
                    print(t)
                    print(r)
                    temp10.append(t)
                    temp11.append(r)
                    j += 1
                }
            }
            let temp12 = json["agenda"][i]["other1"].stringValue
            let temp13 = json["agenda"][i]["other2"].stringValue
            let temp14 = json["agenda"][i]["other3"].stringValue
            let temp15 = json["agenda"][i]["other4"].stringValue
            

            let obj = Agenda(status: temp0, agenda_date: temp1, title: temp2, subtitle: temp3, subtitlediscription: temp4,host: temp5, discription : temp7 ,performerName: temp6,keynoteName: temp8, keynoteDes: temp81,moderatorName : temp9,moderatorDes:temp91,panelistName:temp10,panelistDes : temp11, other1 : temp12, other2 : temp13 , other3 : temp14, other4 : temp15 )
            
            agendas2.append(obj)
            //  print(agendas1[i].host)
            i += 1
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return agendas2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AgendaCell", for: indexPath) as! AgendaCell
        
        cell.hideItems()
        cell.timeLabel!.text = agendas2[indexPath.row].agenda_date
        cell.titleLabel!.text = agendas2[indexPath.row].title
        cell.subtitleLabel!.text = agendas2[indexPath.row].subtitle
        cell.subtitleDescription!.text = agendas2[indexPath.row].subtitlediscription
        
        if agendas2[indexPath.row].host != ""  {
            cell.showHost()
            cell.hostName!.text = agendas2[indexPath.row].host
        }
        if agendas2[indexPath.row].performerName != ""  {
            
            cell.showPerformer()
            cell.performerName!.text = agendas2[indexPath.row].performerName
        }
        
        if agendas2[indexPath.row].keynoteName != ""    {
            
            cell.keynoteName!.text = agendas2[indexPath.row].keynoteName
            cell.keynoteDes!.text = agendas2[indexPath.row].keynoteDes
            cell.showKeynoteSpeaker()
            
        }
        if agendas2[indexPath.row].moderatorName != ""  {
            cell.moderatorName!.text = agendas2[indexPath.row].moderatorName
            cell.moderatorDes!.text = agendas2[indexPath.row].moderatorDes
            cell.moderatorShow()
        }
      return cell
    }

    

}
