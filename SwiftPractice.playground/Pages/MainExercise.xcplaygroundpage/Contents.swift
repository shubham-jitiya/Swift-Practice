import UIKit

//1. Breakfast
func canCook(bacon ingredient1: Int, eggs ingredient2: Int) -> (Bool, Bool) {
    var cookBacon = true, cookEggs = true
    
    if ingredient1 > 7 {
        cookBacon = false
    } else if ingredient2 > 21 {
        cookEggs = false
    }
    return (cookBacon, cookEggs)
}

var cook = canCook(bacon: 3, eggs: 2)

if cook.0 && cook.1 {
    print("you can cook bacon & eggs")
} else if !cook.0 && cook.1 {
    print("throw out bacons and eggs")
} else if cook.0 {
    print("throw out eggs")
} else if cook.1 {
    print("throw out bacons")
}

//2. Leap Year
var year = 2000

func isLeapYear(year: Int) -> Bool {
    let isLeap = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    return isLeap
}

if isLeapYear(year: year) {
    print("Leap year!")
} else {
    print("Not a leap")
}

//3. Hitpoints
var HP = 60

func roundToTens(toRound : Int) -> Int {
    if (toRound % 10 == 0) {
        return toRound
    }
    return (10 - toRound % 10) + toRound //finds how much required to reach multiple of 10 then adds
}

switch HP {
case 0:
    print("Dead!")
case 1..<20:
    print(roundToTens(toRound: 20))
case 20...100:
    print(roundToTens(toRound: HP))
default:
    print("Not a valid HP")
}

/*
 4. Above average
 above avg - yourGrade > currentAverage else
 below avg - yourGrade
*/
var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 8.0
var classAverage: Double = (grade1 + grade2 + grade3 + yourGrade) / 4

yourGrade > classAverage ? print("above average") : print("below average")

//5. Tipping
var mealCost: Double = 3.5
var tip: Int = 20
var tipAmount = mealCost * Double(tip) / 100
var totalAmount = mealCost + tipAmount

print(totalAmount)
