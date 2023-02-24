import Foundation

/*
 Write a Swift program to create a new string made of a copy of
 the first two characters of a given string. If the given string
 is shorter than length 2, return whatever there is.
 
 Input: “Simform”
 Output: “Si”
 */
var inputString = "Simform"
let outputString = inputString.count > 2 ? String(inputString.prefix(2)) : inputString
print(outputString)

/*
 Write a Swift program to create a new string without the first
 and last character of a given string. The string length must be at least 2.
 
 Input: “Simform”
 Output: imfor
*/
if inputString.count >= 2 {
    inputString.removeFirst()
    inputString.removeLast()
}
print(inputString)

/*
 Write a Swift program that accept two strings
 and return their concatenation, except the first char of each string.
 The given strings length must be at least 1.
 
 Input: "Swift", "Examples"
 Output: wiftxamples
 */
var sample1 = "Swift", sample2 = "Examples"
if sample1.count >= 1 && sample2.count >= 1 {
    sample1.removeFirst()
    sample2.removeFirst()
}
sample1 += sample2
print(sample1)

/*
 Write a Swift program to test if a given string starts with "Sw".
 
 Input: Swift
 Output: true
*/
let inputFive = "Swift"
print("Is string starting with sw:  \(inputFive.starts(with: "Sw"))")

/*
 Write a Swift program to create a new string made of the first and
 last n chars from a given string. The string length will be at least n.

 Input: “Simform Solutions”, 3
 Output: Simons
*/
var companyName = "Simform Solutions"
var length = 3
var getPrefix = companyName.prefix(length)
var getSuffix = companyName.suffix(length)
print(getPrefix + getSuffix)

//All string methods
var firstFruit = "Apple", secondFruit = "Mangoes"
print("\nAll string methods: ")
print("First fruit: \(firstFruit) | Second fruit: \(secondFruit)")
firstFruit.append(secondFruit)
print("\nappend(Mangoes): ", firstFruit)
print("Check equality: ", firstFruit.elementsEqual(secondFruit))
print("Check prefix(app): ", firstFruit.hasPrefix("app"))
print("Check suffix(Mangoes): ", firstFruit.hasSuffix("Mangoes"))
firstFruit.insert("$", at: firstFruit.endIndex)
print("Insert '$' at end: ", firstFruit)
//firstFruit.replaceOccurrences(of: "p", with: "x")
print("Reverse: ", String(firstFruit.reversed()))
print("contain(): ", firstFruit.contains("Mangoes"))
print("dropFirst(): ", firstFruit.dropFirst())
print("lowercased(): ", firstFruit.lowercased())
print("uppercased(): ", firstFruit.uppercased())
print("First fruit: ", firstFruit)
