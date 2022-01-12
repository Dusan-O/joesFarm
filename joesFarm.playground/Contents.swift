// le prix du voyage
let price = 1499.0

// L'argent de Joe
var money = 0.0

// Le nombre de jour pendant lesquels Joe doit économiser
var numberOfDay = 0

// La grande [lait, blé, laine]
var barn = ["milk": 0, "wheat": 0, "wool": 0]

while money < price {
    // Jope nourrit les vaches tous les jours
    money -= 4

    // On calcule la taille de la grande
    var barnSize = 0
    for (goods, count) in barn {
        barnSize += count
    }

    if barnSize >= 500 {
        // On vends
        money += Double(barn["milk"]!) * 0.50 // Lait
        money += Double(barn["wheat"]!) * 0.30 // Blé
        money += Double(barn["wool"]!) * 1 // Laine

        // On vide la grande
        barn = ["milk": 0, "wheat": 0, "wool": 0]
    } else {
        // Journée normale
        if numberOfDay % 30 == 1 {
            // Joe moissone
            barn["wheat"]! += 100
        } else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
            // Joe tond les motuons
            barn["wool"]! += 30
        } else {
            // Joe trait les vaches
            barn["milk"]! += 30
        }
    }
    // On passe au jour suivant
    numberOfDay += 1
}

print("Il aura fallu \(numberOfDay) jours a Joe pour économiser \(money) €")


