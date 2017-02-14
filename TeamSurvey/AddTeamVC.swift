//
//  AddNewTeamViewController.swift
//  TeamSurvey
//
//  Created by Keri-Anne Lue on 2/6/17.
//  Copyright © 2017 Keri-Anne Lue. All rights reserved.
//

import UIKit

class AddTeamVC: UIViewController {
    
    @IBOutlet weak var teamNameTextField: UITextField!
    

    @IBOutlet weak var teamNumberTextField: UITextField!
    

    @IBAction func nextButtonPressed(_ sender: UIBarButtonItem) {
        
        if let newName = teamNameTextField.text,
        let numberString = teamNumberTextField.text,
        let newNumber = Int(numberString) {
            
        newTeam = Team(name: newName, number: newNumber)
        print("Created Team \(newNumber) - \(newName)")
        performSegue(withIdentifier: "GoToAutoVC", sender: nil)
        
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
