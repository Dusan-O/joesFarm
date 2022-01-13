// le prix du voyage
let price = 1499.0

// L'argent de Joe
var money = 0.0

// Le nombre de jour pendant lesquels Joe doit économiser
var numberOfDay = 0

// La grande [lait, blé, laine]
var barn = ["milk": 0, "wheat": 0, "wool": 0]

func calculateBarnSize() -> Int {
// On calcule la taille de la grande
    var barnSize = 0
    for (_, count) in barn {
        barnSize += count
    }
    return barnSize
}

func feedCows() {
    money -= 4
}

func sell() {
    // On vends
    money += Double(barn["milk"]!) * 0.50 // Lait
    money += Double(barn["wheat"]!) * 0.30 // Blé
    money += Double(barn["wool"]!) * 1 // Laine
    
    // On vide la grande
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func horvest() {
    barn["wheat"]! += 100
}

func mowSheep() {
    barn["wool"]! += 30
}

func milkCows() {
    barn["milk"]! += 30
}

while money < price {
    feedCows()
    
    if calculateBarnSize() >= 500 {
        sell()
    } else {
        if numberOfDay % 30 == 1 {
            horvest()
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            mowSheep()
        } else {
            milkCows()
        }
    }
    // On passe au jour suivant
    numberOfDay += 1
}

print("Il aura fallu \(numberOfDay) jours a Joe pour économiser \(money) €")


