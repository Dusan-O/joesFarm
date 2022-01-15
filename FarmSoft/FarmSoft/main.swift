//
//  main.swift
//  FarmSoft
//
//  Created by Dusan Orescanin on 12/01/2022.
//

import Foundation

//======================
// MARK: - Parameters
//======================

// Joe's money
var money = 0.0

// Joe's barn : [milk, wheat, wool]
var barn = ["milk": 0, "wheat": 0, "wool": 0]

//======================
// MARK: - Activities
//======================
func feedAnimals() {
    money -= 4
}

func sell() {
    money += Double(barn["milk"]!) * 0.50
    money += Double(barn["wheat"]!) * 0.30
    money += Double(barn["wool"]!) * 1

    // barn empty
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func milkCows(retrieving quantity: Int) {
    barn["milk"]! += quantity
}

func harvest(retrieving quantity: Int) {
    barn["wheat"]! += quantity
}

func mowSheep(retrieving quantity: Int) {
    barn["wool"]! += quantity
}

//======================
// MARK: - Conversation
//======================

func readQuantity(of type: String) -> Int? {
    // what's the quantity
    print("How many \(type) did you get ?")
    
    // Convert the quantity and return
    if let line = readLine() {
        if let quantity = Int(line) {
            return quantity
        }
    }
    
    // Si la valeur n'a pas pu être interprétée
    print("Je n'ai pas compris.")
    
    return nil
}

func addNewActivity() {
    print("What did you do today ?"
        + "\n1. 🥕  I've feeded the animals"
        + "\n2. 💰  I've sold items"
        + "\n3. 🐄  I've milked the cows"
        + "\n4. 🌾  Harvest"
        + "\n5. 🐑  Mow the sheeps")

// We listen the user's answer
if let choice = readLine() {
    switch choice {
    case "1": // feed the animals
        feedAnimals()
    case "2": // sell the items
        sell()
    case "3": // Milk cows
        if let quantity = readQuantity(of: "🍼") {
            milkCows(retrieving: quantity)
        }
    case "4": // Harvest
        if let quantity = readQuantity(of: "🌾") {
            harvest(retrieving: quantity)
        }
    case "5": // mow sheeps
        if let quantity = readQuantity(of: "⚪️") {
            mowSheep(retrieving: quantity)
        }
    default:
        print("I don't understand")
        
    }
    
    print("🎉  Great 🎉")
    
    }
}

func presentMenu() {
    print("What do you want to do ?"
        + "\n1. 🤸  Enter a new activity"
        + "\n2. 🏦  Check the bank balance"
        + "\n3. 🏠  Check the barn")

    // We listen the user's answer
    if let choice = readLine() {
        switch choice {
        case "1": // Add new activity
            addNewActivity()
        case "2": // check the banck balance
            print("On your bank account, the balance is \(money) euros !")
        case "3": // check the barn
        
            print("In your barn, you have :"
                    + "\n🍼  \(barn["milk"]!) milk bottles"
                    + "\n🌾  \(barn["wheat"]!) packs of wheat"
                    + "\n⚪️  \(barn["wool"]!) packs of wool")
            default:
                print("I don't understand.")
            }
    }

}

// software loop
while true {
    presentMenu()
}




