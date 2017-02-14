//
//  TeamsTableVC.swift
//  TeamSurvey
//
//  Created by Keri-Anne Lue on 2/2/17.
//  Copyright © 2017 Keri-Anne Lue. All rights reserved.
//

import UIKit

class TeamTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sharkAttack = Team(name: "Shark Attack",
                               number: 744,
                               hasAuto: true,
                               image: UIImage(named: "744")!,
                               rating: "5Stars",
                               positionFromBoiler: 3,
                               passedBreakLine: true,
                               highGoals: 7,
                               placedGears: 4)
        
        teams.append(sharkAttack)
        
        let childrenOfTheSwamp = Team(name: "Children of the Swamp",
                               number: 179,
                               hasAuto: true,
                               image: UIImage(named: "179")!,
                               rating: "4Stars",
                               positionFromBoiler: 2,
                               passedBreakLine: true,
                               highGoals: 9,
                               placedGears: 2)
        
        teams.append(childrenOfTheSwamp)
        
        let spam = Team(name: "SPAM",
                               number: 180,
                               hasAuto: true,
                               image: UIImage(named: "180")!,
                               rating: "3Stars",
                               positionFromBoiler: 3,
                               passedBreakLine: true,
                               highGoals: 8,
                               placedGears: 3)
        
        teams.append(spam)
       
        let ninjineers = Team(name: "Ninjineers",
                               number: 2383,
                               hasAuto: false,
                               image: UIImage(named: "2383")!,
                               rating: "2Stars",
                               positionFromBoiler: 2,
                               passedBreakLine: false,
                               highGoals: 5,
                               placedGears: 3)
        
        teams.append(ninjineers)
        
        let background = UIImageView(image: UIImage(named: "FIRST-iphone"))
        tableView.backgroundView = background
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = teams[indexPath.row].name
        cell.detailTextLabel?.text = "Team \(teams[indexPath.row].number)"
        cell.imageView?.image = teams[indexPath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTeam = teams[indexPath.row]
    }
    
    @IBAction func exitToTeamsTableVC(sender: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
