//
//  File.swift
//  TeamSurvey
//
//  Created by Keri-Anne Lue on 2/2/17.
//  Copyright © 2017 Keri-Anne Lue. All rights reserved.
//

import Foundation
import UIKit

var teams = [Team]()
var selectedTeam : Team?
var newTeam : Team?

//Data Model
class Team {
    
//properties  --- variables
    var name : String
    var number : Int
    var hasAuto : Bool
    var image : UIImage
    var rating : String
    var positionFromBoiler : Int
    var passedBreakLine : Bool
    var highGoals : Int
    var placedGears : Int

//initializers
    init(name: String, number: Int, hasAuto : Bool, image: UIImage, rating : String, positionFromBoiler : Int, passedBreakLine : Bool, highGoals : Int, placedGears : Int){
    self.name = name
    self.number = number
    self.hasAuto = hasAuto
    self.image = image
    self.rating = rating
    self.positionFromBoiler = positionFromBoiler
    self.passedBreakLine = passedBreakLine
    self.highGoals = highGoals
    self.placedGears = placedGears
    
    }
    init(name: String, number: Int){
        self.name = name
        self.number = number
        self.image = UIImage(named: "FIRST-horizontal")!
        self.rating = "1Stars"
        hasAuto = false
        positionFromBoiler = 1
        passedBreakLine = false
        highGoals = 0
        placedGears = 0
        
    }
}


//other methods
    


