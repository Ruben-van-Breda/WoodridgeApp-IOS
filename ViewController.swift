//
//  ViewController.swift
//  Woodridge App IOS
//
//  Created by Ruben van Breda on 2016/09/11.
//  Copyright © 2016 Ruben van Breda. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var myTableView: UITableView!
    
    // General
    var menuGeneral = ["Notice","Meals","Events Info"]
    // Grades
    var menuGrade = ["Grade 8","Grade 9","Grade 10","Grade 11","Grade 12"]
    //Academics
    var menuAcademics = ["Clinics","Learn Exams","Exams Schedule"]
    // Sport
    var menuSport = ["Sport Results","Team Info"]
    // Tests
    var menuTest = ["My Test"]
    //More Info
    var menuMoreInfo = ["Contacts"]
    var theTopic = ""
    
    

    
    
    // Tell segue which view contoller to go to.
    var DestLoc = "web"
    override func viewDidLoad() {
        super.viewDidLoad()
               
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.backgroundView = UIImageView(image: #imageLiteral(resourceName: "woodridge-astro"))
        
        
      }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
            return menuGeneral.count
        }
        
        if section == 1
        {
            return menuGrade.count
        }
        
        if section == 2
        {
            return menuAcademics.count
        }

        if section == 3
        {
            return menuSport.count
        }
            
        if section == 4
        {
            return menuTest.count
        }
            
        if section == 5
        {
            return menuMoreInfo.count
        }
            
            
        else
        {
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.black
        header.textLabel?.backgroundColor = UIColor.white
        header.textLabel?.font = UIFont(name: "Futura", size: 20)!
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if ( section == 0)
        {
            return "General"
        }
        
        if section == 1
        {
            return "Grades"
        }
        if section == 3
        {
            return "Sport"
        }
        if section == 4
        {
            return "Tests"
        }
        
        if section == 5
        {
            return "Information"
        }
        if section == 2
        {
            return "Academics"
        }
        
        return "NULL"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if indexPath.section == 0
        {
            cell.textLabel?.text = menuGeneral[indexPath.row]
        }
        if indexPath.section == 1
        {
            cell.textLabel?.text = menuGrade[indexPath.row]
        }
        if indexPath.section == 3
        {
            cell.textLabel?.text = menuSport[indexPath.row]
        }
        if indexPath.section == 4
        {
            cell.textLabel?.text = menuTest[indexPath.row]
        }
        if indexPath.section == 5
        {
            cell.textLabel?.text = menuMoreInfo[indexPath.row]
        }
        
        if indexPath.section == 2
        {
            cell.textLabel?.text = menuAcademics[indexPath.row]
        }
        
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.textColor = UIColor.white

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let cellRow = "\([indexPath.row])"
        let cellSec = "\([indexPath.section])"
        
        CheckCellTopic(cellRow: cellRow, cellSec: cellSec)
        
        
    }
    
    func CheckCellTopic(cellRow: String,cellSec: String)
    {
        if (cellSec == "[0]")
        {
            if (cellRow == "[0]")
            {
                theTopic = "Notice"
                
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
            if (cellRow == "[1]")
            {
                theTopic = "Meals"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
            if (cellRow == "[2]")
            {
                theTopic = "EventsInfo"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
        }
            
        else if (cellSec == "[1]")
        {
            if (cellRow == "[0]")
            {
                theTopic = "Grade8"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[1]")
            {
                theTopic = "Grade9"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
            
            if (cellRow == "[2]")
            {
                theTopic = "Grade10"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[3]")
            {
                theTopic = "Grade11"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[4]")
            {
                theTopic = "Grade12"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
        }
        else if (cellSec == "[2]")
        {
            if (cellRow == "[0]")
            {
                theTopic = "Clinics"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[1]")
            {
                theTopic = "LearnExams"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[2]")
            {
                theTopic = "ExamsSchedule"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            
            
        }
            
        else if (cellSec == "[3]")
        {
            if (cellRow == "[0]")
            {
                theTopic = "SportResults"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
            if (cellRow == "[1]")
            {
                theTopic = "TeamInfo"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
        
            
        }
            
        else if (cellSec == "[4]")
        {
            if (cellRow == "[0]")
            {
                
                SegViewController(toViewController: "TestTableViewController")
            }
        }
            
        else if (cellSec == "[5]")
        {
            if (cellRow == "[0]")
            {
                theTopic = "Contacts"
                SaveDefaults(forKey: "appTheTopic")
                SegViewController(toViewController: "WebViewController")
            }
        }
        
            
            
            
        else{
            
            theTopic = "Defaults"
        }
        
        
        
    }
    
    func SaveDefaults(forKey : String)
    {
    
        if(forKey == "appTheTopic")
        {
            let defaults = UserDefaults.standard
            defaults.set(theTopic, forKey: "appTheTopic")
            defaults.synchronize()

        }
    }
    
    func SegViewController(toViewController : String)
    {
        
        if(toViewController == "WebViewController")
        {
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc: WebViewController = storyboard.instantiateViewController(withIdentifier: "webViewController") as! WebViewController as WebViewController
            
            
            self.present(vc, animated: true, completion: nil)
        }
        
        else if ( toViewController == "TestTableViewController")
        {
        
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc: TestTableViewController = storyboard.instantiateViewController(withIdentifier: "testTableViewController") as! TestTableViewController as TestTableViewController
            
            
            self.present(vc, animated: true, completion: nil)

        }
        else if ( toViewController == "NewUpdatesViewController")
        {
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc: NewUpdatesViewController = storyboard.instantiateViewController(withIdentifier: "newUpdatesViewController") as! NewUpdatesViewController as NewUpdatesViewController
            
            
            self.present(vc, animated: true, completion: nil)
            
        }
        
        else if ( toViewController == "ViewController")
        {
            
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let vc: ViewController = storyboard.instantiateViewController(withIdentifier: "viewController") as! ViewController as ViewController
            
            
            self.present(vc, animated: true, completion: nil)
            
        }

        
    }
    
    
    @IBAction func AdminButton(_ sender: AnyObject) {
       SegViewController(toViewController: "AdminViewController")
    }
    
    
        
        
        
        
        
        
    
    
   
   
    
}

