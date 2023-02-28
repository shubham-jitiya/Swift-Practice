import UIKit

//1. Create an example of demonstrating How to declare optionals in swift?
var marks: Int? = 55
//marks = nil

//2. Force unwrapping
var scores: Int? = 80
var getScore = scores!

print(getScore)

//3. Optional binding
var possibleNumber = "123"
//possibleNumber = "abc"
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}

//4. Create one example using if-let
func randomNumber() -> Int? {
    return 48
}

func checkNum() {
    if let num = randomNumber() {
        print(num)
    }
}

checkNum()

//5. Create one example using guard-let
func checkNumber() {
    guard let num = randomNumber() else {
           return
       }
    print(num)
}

checkNumber()

//5. Nil-coalescing operator
var color: String? = "red", defaultColor = "white"
//color = nil
var getColor = color ?? defaultColor
print(getColor)
