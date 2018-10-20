//
//  AgendaCell.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 18/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class AgendaCell: UICollectionViewCell {

    
    
    @IBOutlet weak var panelistTitle: UILabel!
    @IBOutlet weak var hostTitle: UILabel!
    @IBOutlet weak var keynoteView: UIView!
    @IBOutlet weak var keynoteTitle: UILabel!
    @IBOutlet weak var keynoteName: UILabel!
    @IBOutlet weak var keynoteDes: UILabel!
    @IBOutlet weak var performerLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var moderatorName: UILabel!
    @IBOutlet weak var moderatorDes: UILabel!
    @IBOutlet weak var moderatorView: UIView!
    @IBOutlet weak var moderatorTitle: UILabel!
    @IBOutlet weak var performerTitle: UILabel!
    @IBOutlet weak var performerView: UIView!
    @IBOutlet weak var performerName: UILabel!
    
    @IBOutlet weak var hostName: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var subtitleDescription: UILabel!
    
    func hideItems()    {
        performerView.isHidden = true
        performerTitle.isHidden = true
        performerLabel.isHidden = true
        performerName.isHidden = true
        hostName.isHidden = true
        keynoteDes.isHidden = true
        keynoteName.isHidden = true
        keynoteTitle.isHidden = true
        keynoteView.isHidden = true
        moderatorDes.isHidden = true
        moderatorName.isHidden = true
        moderatorView.isHidden = true
        moderatorTitle.isHidden = true
        tableView.isHidden = true
        panelistTitle.isHidden = true
    }
    
    func showPerformer()  {
        performerView.isHidden = false
        performerTitle.isHidden = false
        performerLabel.isHidden = false
        performerName.isHidden = false
    }
    
    func showKeynoteSpeaker()   {
        keynoteDes.isHidden = false
        keynoteName.isHidden = false
        keynoteTitle.isHidden = false
        keynoteView.isHidden = false
    }
    func showHost() {
        hostName.isHidden = false
    }
    
    func moderatorShow()    {
        moderatorDes.isHidden = false
        moderatorName.isHidden = false
        moderatorView.isHidden = false
        moderatorTitle.isHidden = false
    }
    func setTableViewDataSourceDelegate
        <D: UITableViewDataSource & UITableViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        tableView.delegate = dataSourceDelegate
        tableView.dataSource = dataSourceDelegate
        tableView.tag = row
        tableView.reloadData()
    }
    func showPanelist() {
        tableView.isHidden = false
        panelistTitle.isHidden = false
    }
    
    
}
