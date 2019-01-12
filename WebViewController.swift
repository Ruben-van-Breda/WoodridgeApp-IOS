//
//  WebViewController.swift
//  Woodridge App IOS
//
//  Created by Ruben van Breda on 2016/09/11.
//  Copyright © 2016 Ruben van Breda. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet var myWeb: UIWebView!
    
    var topic = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        if(defaults.value(forKey: "appTheTopic") != nil)
        {
            topic = defaults.value(forKey: "appTheTopic") as! String
            defaults.synchronize()
        }
        
        let url = URL(string: loadTopic(topic))
        let request = URLRequest(url: url!)
        
        myWeb.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadTopic (_ theTopic: String) -> String{
    
        var url = "http://woodridge.dreamingrealitytech.com/"
        
       
        
        if theTopic == "Admin"
        {
            
            url = "http://woodridge.dreamingrealitytech.com/wp-admin/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        
        if theTopic == "Notice"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/notice/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()

        }
        
        if theTopic == "Home"
        {
            url = "http://woodridge.dreamingrealitytech.com/"
            
            
        }
        if theTopic == "Meals"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/meals/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        if theTopic == "EventsInfo"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/event-info/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        //Academics
        if theTopic == "Clinics"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/clinics/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()

        }
        
        if theTopic == "LearnExams"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/learn-exams/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()

        }
        
        if theTopic == "ExamsSchedule"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/exams-schedual/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()

        }
        
        
        
        //Sport
        if theTopic == "SportResults"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/sport-results/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        if theTopic == "TeamInfo"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/team-info/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        
        // Grades
        if theTopic == "Grade8"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/grade8/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        if theTopic == "Grade9"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/grade9/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        if theTopic == "Grade10"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/grade10/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        if theTopic == "Grade11"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/grade11/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        if theTopic == "Grade12"
        {
            url = "http://woodridge.dreamingrealitytech.com/category/grade12/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        if theTopic == "Contacts"
        {
            url = "http://woodridge.dreamingrealitytech.com/contacts/"
            let defaults = UserDefaults.standard
            defaults.set("Home", forKey: "appTheTopic")
            defaults.synchronize()
        }
        
        
        
        return url
        
    }
    
    
    

    

}
