import Foundation

//Extension

/*
 Create following string manipulation functions using string extensions:
 Add a character in a string at 5th position
*/
extension String {
    func insertAt(character: Character, at index: Int) -> String {
        guard index >= 0 && index <= count else { return "In valid range" }
        var strArr: [Character] = Array(self)
        strArr.insert(character, at: index)
        return String(strArr)
       }
    
    func replaceAt(find oldChar: Character, replace newChar: Character) -> String {
        var strArr: [Character] = Array(self)
        for i in 0..<count {
            if strArr[i] == oldChar {
                strArr[i] = newChar
            }
        }
        return String(strArr)
       }
    
    func removeSpaces() -> String {
        var strArr: [Character] = Array(self)
        var newStr: String = ""
        
        for i in 0..<count {
            if strArr[i] != " " {
                newStr.append(strArr[i])
            }
        }
        return newStr
       }
    
    func countWords() -> Int {
        return self.count
       }
}

//1. Add character at ith index
var name = "Shubham Jitiya"
var newString = name.insertAt(character: "X", at: 5)
print(newString)

//2. Replace character
var replacedString = name.replaceAt(find: "h", replace: "1")
print(replacedString)

//3. Remove white spaces from string
var removedSpaces = name.removeSpaces()
print(removedSpaces)

//4. Get number of words in a string
var words = name.countWords()
print(words)
