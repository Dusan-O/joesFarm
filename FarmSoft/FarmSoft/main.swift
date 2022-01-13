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

// L'argent de Joe
var money = 0.0

// La grange de Joe : [lait, blé, laine]
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

    // On vide la grange
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func milkCows() {
    barn["milk"]! += 30
}

func harvest() {
    barn["wheat"]! += 100
}

func mowSheep() {
    barn["wool"]! += 30
}

//======================
// MARK: - Conversation
//======================

func addNewActivity() {
    print("Qu’avez-vous fait aujourd'hui?"
        + "\n1. 🥕  J’ai nourri mes animaux"
        + "\n2. 💰  J’ai vendu mes produits"
        + "\n3. 🐄  J’ai trait mes vaches"
        + "\n4. 🌾  J’ai moissonné"
        + "\n5. 🐑  J’ai tondu mes moutons")

// On récupére la réponse de l'utilisateur
if let choice = readLine() {
    switch choice {
    case "1": // Nourrir les animaux
        feedAnimals()
    case "2": // Vendre les produits
        sell()
    case "3": // Traire les vaches
        milkCows()
    case "4":
        harvest()
    case "5":
        mowSheep()
    default:
        print("Je ne comprends pas")
        
    }
    
    print("🎉  Super 🎉")
    
    }
}

func presentMenu() {
    print("Que voulez vous faire ?"
        + "\n1. 🤸  Enregistrer une nouvelle activité"
        + "\n2. 🏦  Consulter ma banque"
        + "\n3. 🏠  Consulter ma grange")

    // On récupére la réponse de l'utilisateur
    if let choice = readLine() {
        switch choice {
        case "1": // Ajouter une nouvelle activité
            addNewActivity()
        case "2":
            print("Votre banque contient \(money) euros !")
        case "3": // Consulter la grange
        
            print("Votre grange contient :"
                    + "\n🍼  \(barn["milk"]!) bidons de lait"
                    + "\n🌾  \(barn["wheat"]!) bottes de blé"
                    + "\n⚪️  \(barn["wool"]!) pelottes de laine")
            default:
                print("Je ne comprends pas.")
            }
    }

}

// la boucle du programme
while true {
    presentMenu()
}
