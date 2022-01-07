// Le prix du voyage
let price = 1499.0

// Nombre de jours pendant lesquels Joe doit économiser
var numberOfDay = 0

// L'argent de Joe
var money = 0.0

while money < price {
    // Joe nourrit les vaches tous les jours
    money -= 4
    
    if numberOfDay == 1 {
    // Joe moisonne
        money += 100 * 0.30
    } else if numberOfDay == 10 || numberOfDay == 20 {
        money += 30 * 1
    } else {
        money += 30 * 0.50
    }
    
    numberOfDay += 1
}

print("Il aura fallu \(numberOfDay) jours a Joe pour économiser \(money)")

var day = 0 // Le 0 c'est donc lundi

while day < 30 {
    if day % 7 == 5 || day % 7 == 6 {
        // C'est le 6e ou 7e jour de la semaine
        print("Super c'est le week-end !")
    } else {
        print("Allez au travail !")
    }
    day += 1
}

if numberOfDay % 30 == 1 {
    // Joe moissonne
} else if numberOfDay % 30 == 10 || numberOfDay % 30 == 20 {
    // Joe tonds les moutons
} else {
    // Joe vends son lait
}
