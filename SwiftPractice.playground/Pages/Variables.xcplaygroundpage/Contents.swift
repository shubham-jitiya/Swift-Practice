import Foundation

//1. Print Hello World in swift Play Ground
print("Hello, world")

//2. Create variables of different types and print it
//var marks= 55 //Error - must give equal indentation on both the sides
var marks = 55, studentName = "Shubham Jitiya" //Declare and initialize variables in oneline
var enroll: Int = 55012 //Another way - type annotations
var total: Float = 75.123456 //Type Float: max precision - 6
var grandTotal = 574.12345678912345  //Type Double: max precision - 15
let π = 3.14159 //We can use unicodes
let 你好 = "你好世界"
var 😎😎 = "Type of unicode: "
var isAdmin = true
var `for` = "Reserved keyword used as variable" //Use reserved keywords
//`for` = 12 //Can't be assigned different type of value
var uInt8Max = UInt8.max, uInt32Max = UInt32.max, uInt64Max = UInt64.max

print("Type Double: \(grandTotal)"); print("\(😎😎) \(type(of: 😎😎))") //Semicolon is mandatory
print("Type Boolean: \(isAdmin)")
print("Type String: \(studentName)") //Print single value
print(`for`)
print("\nEn: \(enroll) | Name: \(studentName) | Marks: \(marks) | Total: \(total) | Grand Total: \(grandTotal)")
print("\nuInt8Max: \(uInt8Max) of type: \(type(of: uInt8Max))")
print("uInt32Max: \(uInt32Max) of type: \(type(of: uInt32Max))")
print("uInt64Max: \(uInt64Max) of type: \(type(of: uInt64Max))")

var decimalInteger = 17
var binaryInteger = 0b10001       // 17 in binary notation
var octalInteger = 0o21           // 17 in  octal notation
var hexadecimalInteger = 0x11     // 17 in hexadecimal notation

print("\n---- Number literals ----")
print("Decimal number: \(decimalInteger)")
print("Binary number: \(binaryInteger)")
print("Octal number: \(octalInteger)")
print("Hexadecimal number: \(hexadecimalInteger)")

let hexaDecimal = 0x1p1, exponentDecimal = 1e1
print("Hexa - \(hexaDecimal) | Exponent \(exponentDecimal)")

//3. Create one integer and perform addition with 5 to that and print values
var grades = 50
var sum = grades + 5

print("\nSummation with integer = \(sum)")

//Calculate interest
var principalAmount = 1001
let rateOfInterest = 15
var numberOfYears = 8
let simpleInterest = Double(principalAmount * rateOfInterest * numberOfYears) / 100

print("\nInterest = \(simpleInterest)")


/*
 Topic: Operators
 Create example for String concate using operators
*/
let firstName = "Jitiya", lastName = "Shubham"
let fullName = firstName + " " + lastName

print("\nConcate string: \(fullName)")

//Create one example for show usage of operator's addition, multiplication, division for integers and floats
var value1 = 5, value2: Float = 10.5
let addition = Float(value1) + value2
let multiplication = Float(value1) * value2
let division = value2 / Float(value1)

print("Addition = \(addition)")
print("Multiplication = \(multiplication)")
print("Division = \(division)")

//What is ternary operator and show example of usage
let user = isAdmin ? "Admin logged in" : "Not admin"
print("Ternary operator: \(user)")
