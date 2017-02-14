//
//  AutoVC.swift
//  TeamSurvey
//
//  Created by Keri-Anne Lue on 2/6/17.
//  Copyright © 2017 Keri-Anne Lue. All rights reserved.
//

import UIKit

class AutoVC: UIViewController {
    
    @IBOutlet weak var hasAutoSegmentedControl: UISegmentedControl!
   
    @IBOutlet weak var positionSegmentedControl: UISegmentedControl!

    @IBOutlet weak var passedBreakLineSegmentedControl: UISegmentedControl!
   
    
    //does it have an auto
    @IBAction func nextButtonPressed(_ sender: Any) {
      
        if hasAutoSegmentedControl.selectedSegmentIndex == 0 {
            newTeam?.hasAuto = true
        }else{
        newTeam?.hasAuto = false
        }
        
        
        if positionSegmentedControl.selectedSegmentIndex == 0{
            newTeam?.positionFromBoiler = 1
        }else if positionSegmentedControl.selectedSegmentIndex == 1{
            newTeam?.positionFromBoiler = 2
        }else{
            newTeam?.positionFromBoiler = 3
        }
        
        
        if passedBreakLineSegmentedControl.selectedSegmentIndex == 0{
            newTeam?.passedBreakLine = true
        }else{
            newTeam?.passedBreakLine = false
        }
        
        performSegue(withIdentifier: "GoToTeleopVC", sender: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
