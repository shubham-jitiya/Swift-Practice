import Foundation

//1. Decode the message
var code = [
"a" : "b",
"b" : "c",
"c" : "d",
"d" : "e",
"e" : "f",
"f" : "g",
"g" : "h",
"h" : "i",
"i" : "j",
"j" : "k",
"k" : "l",
"l" : "m",
"m" : "n",
"n" : "o",
"o" : "p",
"p" : "q",
"q" : "r",
"r" : "s",
"s" : "t",
"t" : "u",
"u" : "v",
"v" : "w",
"w" : "x",
"x" : "y",
"y" : "z",
"z" : "a"
]
var message: [String: String] = [:], encodedMessage = "uijt nfttbhf jt ibse up sfbe"

//Interchange key - value in new dictionary
for (key, value) in code {
    message.updateValue(key, forKey: value)
}

//Decode message
for char in encodedMessage {
    if let char = message[String(char)] {
        print(char, terminator: "")
    } else {
        print(char, terminator: "") //deals with spaces
    }
}

//2. Get the first name
var people: [[String:String]] = [
    [ "firstName": "Calvin", "lastName": "Newton" ],
    [ "firstName": "Garry", "lastName": "Mckenzie" ],
    [ "firstName": "Leah", "lastName": "Rivera" ],
    [ "firstName": "Sonja", "lastName": "Moreno" ],
    [ "firstName": "Noel", "lastName": "Bowen" ]
    ]
var firstNames = [String]()

print("\n")
for person in people {
    if let firstName = person["firstName"] {
        firstNames.append(firstName)
    }
}
print("First names: ", firstNames)

//3. Get the full name
var fullName: [String] = []

print()
for person in people {
    if let firstName = person["firstName"], let lastName = person["lastName"] {
        fullName.append(firstName + " " + lastName)
    }
}
print("Full names: ", fullName)

/*
 4. Find the person with the lowest score and print his full name.
 Approach: find the min score then in each dict find key == min, if found get fName & lName
 */
var peopleScores: [[String:Any]] = [
[
"firstName": "Calvin",
"lastName": "Newton",
"score": 13
],

[
"firstName": "Garry",
"lastName": "Mckenzie",
"score": 12
],

[
"firstName": "Leah",
"lastName": "Rivera",
"score": 10
],

[
"firstName": "Sonja",
"lastName": "Moreno",
"score": 3
],

[
"firstName": "Noel",
"lastName": "Bowen",
"score": 16
]
]
var scoresOfPeople = [Int]()

for person in peopleScores {
    if let scores = person["score"] as? Int {
        scoresOfPeople.append(scores)
    }
}

var lowestScore = scoresOfPeople.sorted()[0]

//print("Lowest score: ", lowestScore)
print()
for person in peopleScores {
    if let scores = person["score"] as? Int, scores == lowestScore,
       let firstName = person["firstName"] as? String, let lastName = person["lastName"] as? String {
       print("\(firstName) \(lastName)")
    }
}

//5. Print the leaderboard
var peopleLeaderBoard: [[String:Any]] = [
[
"firstName": "Calvin",
"lastName": "Newton",
"score": 13
],

[
"firstName": "Garry",
"lastName": "Mckenzie",
"score": 23
],

[
"firstName": "Leah",
"lastName": "Rivera",
"score": 10
],

[
"firstName": "Sonja",
"lastName": "Moreno",
"score": 3
],

[
"firstName": "Noel",
"lastName": "Bowen",
"score": 16
]
]

func sortScores(score1: [String: Any], score2: [String: Any]) -> Bool {
    guard let score1 = score1["score"] as? Int,
          let score2 = score2["score"] as? Int else {
        return false
    }
    return score1 > score2
}

let leaderBoardSorted = peopleLeaderBoard.sorted(by: sortScores)
print()
for (idx, person) in leaderBoardSorted.enumerated() {
    if let firstName = person["firstName"], let lastName = person["lastName"], let score = person["score"]{
    print("\(idx+1) \(firstName) \(lastName) \(score)")
 }
}

//6. Find the frequency of num array & sort
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var frequency: [Int: Int] = [:]

for num in numbers {
    frequency[num] = (frequency[num] ?? 0) + 1
}

var sortedFrequency = frequency.sorted(by: < )

print()
for (key, value) in sortedFrequency {
    print(key, value)
}
