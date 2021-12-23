import UIKit

var greeting = "Hello, playground"


var a:Double = 1876.79797657765609870978709780987
var b:Float = 1876.79797657765609870978709780987
var c = 1876.79797657765609870978709780987

// Le prix du voyage aux Caraïbes de Joe
var price = 1499

// Le bénéfice quotidien de Joe avec sa ferme
var dailyBenefit = 10


// Le nombre de jours pendant lesquelles Joe doit économiser
var result = price / dailyBenefit

 // ou alternativement => var price = 1499.0


var debut = "Je suis le début de la phrase... "
var fin = "Et moi la fin !"

var phrase = debut + fin

var age = 34
var monAge = "Vous avez \(age) ans!"


var joeSavingDays = "Cher Joe, il te faudra économiser pendant \(result) jours pour te payer ton voyage à \(price) €"

for i in 1...5 {
    print("avance")
    print("le pion a avancé de \(i) cases")
}
