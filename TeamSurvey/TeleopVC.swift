//
//  ManualVC.swift
//  TeamSurvey
//
//  Created by Keri-Anne Lue on 2/6/17.
//  Copyright © 2017 Keri-Anne Lue. All rights reserved.
//

import UIKit

class TeleopVC: UIViewController {

    @IBOutlet weak var highGoalsLabel: UILabel!
    @IBOutlet weak var highGoalStepper: UIStepper!
    @IBOutlet weak var placedGearsLabel: UILabel!
    @IBOutlet weak var placedGearsStepper: UIStepper!
    
    @IBAction func highGoalsChanged(_ sender: Any) {
       highGoalsLabel.text = " \(Int(highGoalStepper.value))"
        
    }
    @IBAction func placedGearsChanged(_ sender: Any) {
        
        placedGearsLabel.text = " \(Int(placedGearsStepper.value))"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newTeam?.highGoals = Int(highGoalStepper.value)
        newTeam?.placedGears = Int(placedGearsStepper.value)
        
        if let t = newTeam{
            teams.append(t)
        }
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
