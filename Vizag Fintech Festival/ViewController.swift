//
//  ViewController.swift
//  Vizag Fintech Festival
//
//  Created by The Taste Affair on 09/10/18.
//  Copyright © 2018 Raghav Sethi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func aboutUsButton(_ sender: Any) {
        let aboutOptions = UIAlertController(title: "About Us", message: "", preferredStyle: .actionSheet)
        
        let sunriseState = UIAlertAction(title: "Sunrise State", style: .default) { (UIAlertAction) in
            //
        self.performSegue(withIdentifier: "sunriseState", sender: Any?.self)
        }
        let fintechValley = UIAlertAction(title: "Fintech Valley Vizag", style: .default) { (UIAlertAction) in
            //
            self.performSegue(withIdentifier: "fintechValletVizag", sender: Any?.self)

        }
        let innovation = UIAlertAction(title: "AP Innovation Society", style: .default) { (UIAlertAction) in
            //
            self.performSegue(withIdentifier: "apInnovation", sender: Any?.self)

        }
        let past = UIAlertAction(title: "Past Events", style: .default) { (UIAlertAction) in
            //pastEvents
            self.performSegue(withIdentifier: "pastEvents", sender: Any?.self)

        }
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (UIAlertAction) in
            //
        }
        
        aboutOptions.addAction(sunriseState)
        aboutOptions.addAction(fintechValley)
        aboutOptions.addAction(innovation)
        aboutOptions.addAction(past)
        aboutOptions.addAction(cancelOption)
        
        present(aboutOptions, animated: true) {
            //
        }
    }
    @IBAction func exploreButton(_ sender: UIButton) {
    
        
        let exploreOptions = UIAlertController(title: "Explore Vizag", message: "", preferredStyle: .actionSheet)
        
        let sightseeing = UIAlertAction(title: "SightSeeing", style: .default) { (UIAlertAction) in
            //siteTours
            self.performSegue(withIdentifier: "siteTours", sender: Any?.self)
        }
        let accomodation = UIAlertAction(title: "Accomodation", style: .default) { (UIAlertAction) in
            //accomodation
            self.performSegue(withIdentifier: "accomodation", sender: Any?.self)

        }
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (UIAlertAction) in
            //
        }
        
        exploreOptions.addAction(sightseeing)
        exploreOptions.addAction(accomodation)
        exploreOptions.addAction(cancelOption)
        
        present(exploreOptions, animated: true) {
            //
        }
        
    }
    
    @IBAction func publicButton(_ sender: Any) {
        
        
        let publicRelationsOptions = UIAlertController(title: "Public Relations", message: "", preferredStyle: .actionSheet)
        let sup = UIAlertAction(title: "Supporting Associates", style: .default) { (UIAlertAction) in
            //
            self.performSegue(withIdentifier: "supportingAssociations", sender: Any?.self)
        }
        let media = UIAlertAction(title: "Media Partners", style: .default) { (UIAlertAction) in
            //
            self.performSegue(withIdentifier: "MediaPartners", sender: Any?.self)
        }
        let media2 = UIAlertAction(title: "Media Acceditation", style: .default) { (UIAlertAction) in
            //
        }
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (UIAlertAction) in
            //
        }
        publicRelationsOptions.addAction(sup)
        publicRelationsOptions.addAction(media)
        publicRelationsOptions.addAction(media2)
        publicRelationsOptions.addAction(cancelOption)
        
        present(publicRelationsOptions, animated: true) {
            //
        }

        
        
    }
    @IBAction func registrationButton(_ sender: Any) {
        if let url = URL(string: "https://www.vizagfintechfestival.com/registration.php") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    @IBAction func millionButton(_ sender: Any) {
        
        let millionOptions = UIAlertController(title: "$1 Million Challenge" , message: "", preferredStyle: .actionSheet)
        
        let detailsOption = UIAlertAction(title: "Program Details", style: .default) { (UIAlertAction) in
            //programDetails
            self.performSegue(withIdentifier: "programDetails", sender: Any?.self)

        }
        let americaRoadshows = UIAlertAction(title: "North America Roadshows", style: .default) { (UIAlertAction) in
            
            self.performSegue(withIdentifier: "northAmerica", sender: Any?.self)
            //
        }
        let otherRoadshows = UIAlertAction(title: "Rest of World Roadshows", style: .default) { (UIAlertAction) in
            self.performSegue(withIdentifier: "restOfWorld", sender: Any?.self)
            //
        }
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (UIAlertAction) in
            //
        }
        
        millionOptions.addAction(detailsOption)
        millionOptions.addAction(americaRoadshows)
        millionOptions.addAction(otherRoadshows)
        millionOptions.addAction(cancelOption)
        
        present(millionOptions, animated: true) {
            //
        }
        
    }
    @IBAction func fintechFestButton(_ sender: Any) {
        let finFestivalOptions = UIAlertController(title: "Fintech Festival", message: "", preferredStyle: .actionSheet)
        
        let festLineUp = UIAlertAction(title: "Festival Line-up", style: .default) { (UIAlertAction) in
            // Festival LineUp Page
            self.performSegue(withIdentifier: "festivalLineup", sender: Any?.self)
        }
        let eventCalender = UIAlertAction(title: "Event Calendar", style: .default) { (UIAlertAction) in
            // Event calender
            self.performSegue(withIdentifier: "eventCalendar", sender: Any?.self)

        }
        let conferenceAgendaOption = UIAlertAction(title: "Conference Agenda", style: .default) { (UIAlertAction) in
            // Conference Agenda Page
            self.performSegue(withIdentifier: "conferenceAgendaPage", sender: Any?.self)

        }
        let exhibitionOption = UIAlertAction(title: "Exhibition", style: .default) { (UIAlertAction) in
            // Exhibition
            self.performSegue(withIdentifier: "exhibition", sender: Any?.self)

        }
        let speakerLineUpOption = UIAlertAction(title: "Speakers Line-up", style: .default) { (UIAlertAction) in
            //
        }
        let travelInfoOption = UIAlertAction(title: "Travel Information", style: .default) { (UIAlertAction) in
            // Travel Info
        }
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (UIAlertAction) in
            //
        }
        finFestivalOptions.addAction(festLineUp)
        finFestivalOptions.addAction(eventCalender)
        finFestivalOptions.addAction(conferenceAgendaOption)
        finFestivalOptions.addAction(exhibitionOption)
        finFestivalOptions.addAction(speakerLineUpOption)
        finFestivalOptions.addAction(travelInfoOption)
        finFestivalOptions.addAction(cancelOption)
        
        present(finFestivalOptions, animated: true) {
            
        }

    }
    @IBAction func howToParticipateButton(_ sender: Any) {
        
       let participateOptions = UIAlertController(title: "How to Participate", message: "", preferredStyle: .actionSheet)
        
        let partnerOption = UIAlertAction(title: "Partner With Us", style: .default) { (action) in
            // Partner With Us options here
            self.performSegue(withIdentifier: "partnerWithUs", sender: Any?.self)
        }
        let bookOption = UIAlertAction(title: "Book Your Space", style: .default) { (action) in
            // Book With Us Options here
            self.performSegue(withIdentifier: "bookYourSpace", sender: Any?.self)

        }
        
        let attendOption = UIAlertAction(title: "Attend The Conference", style: .default) { (action) in
            //Attend Conference Options here
            self.performSegue(withIdentifier: "attendTheConference", sender: Any?.self)

        }
        
        let businessOption = UIAlertAction(title: "Business Matching", style: .default) { (action) in
            //
            
            self.performSegue(withIdentifier: "businessMatching", sender: Any?.self)

        }
        
        let cancelOption = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
            
        }
        participateOptions.addAction(partnerOption)
        participateOptions.addAction(bookOption)
        participateOptions.addAction(attendOption)
        participateOptions.addAction(businessOption)
        participateOptions.addAction(cancelOption)



        present(participateOptions, animated: true) {
            
        }
    }
    
    @IBAction func helpDeskButton(_ sender: Any) {
        if let url = URL(string: "https://www.vizagfintechfestival.com/contact-us.php") {
            UIApplication.shared.open(url, options: [:])
        }

    }
    
    @IBAction func ConferenceButton(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    func conferenceButton(conference : UIButton)    {
            
    }

}

