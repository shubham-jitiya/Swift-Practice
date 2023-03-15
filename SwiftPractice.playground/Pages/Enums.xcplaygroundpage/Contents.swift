import Foundation

/*
 1. Write swift program using enumerations to check week day from given number.
 Consider Monday as 1 and Sunday as 7.
 We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
 Example. It should return Monday or mon if I pass parameter 1 for get day name.
*/
    
enum WeekDay: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
    
    func shortNames() -> String{
        switch self {
        case .monday:
            return "mon"
        case .tuesday:
            return "tue"
        case .wednesday:
            return "wed"
        case .thursday:
            return "thur"
        case .friday:
            return "fri"
        case .saturday:
            return "sat"
        case .sunday:
            return "sun"
        }
    }
}

//get day
var findDay = 7
if let day = WeekDay(rawValue: findDay) {
    switch day {
        case WeekDay.monday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.tuesday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.wednesday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.thursday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.friday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.saturday:
            print(day.shortNames(), terminator: " - ")
        case WeekDay.sunday:
            print(day.shortNames(), terminator: " - ")
    }
    print(day)
}  else {
    print("Please enter a valid day between [1-7] !")
}


// 2.  Create one enumeration program to return number of days in a month
enum Month {
    case jan, feb, mar, apr, may, jun, jul, aug, sept, oct, nov, dec
    
    func getDays() -> Int {
        switch self {
        case .jan, .mar, .may, .jul, .aug, .oct, .dec:
            return 31
        case .apr, .jun, .sept, .nov :
            return 30
        case .feb:
            return 28
        }
    }
}

let month = Month.feb
print("\(month): \(month.getDays()) days")


// 3. Write a swift program using enumerations to demonstrate Int enums.
enum PizzaSize: Int {
    case small = 100
    case medium = 200
    case large = 300
}

//Access raw values
var order = PizzaSize.small.rawValue
print("Ordered size : \(order)")


// 4. Write a swift program to demonstrate string type enum.
enum Devices {
    case laptop(name: String), mobile(name: String), tablet(name: String)
}

func checkDevice(deviceName: Devices) -> Void {
    switch deviceName {
    case .laptop(let name):
        print("My Laptop: \(name)")
    case .mobile(let name):
        print("My Mobile: \(name)")
    case .tablet(let name):
        print("My Tablet: \(name)")
    }
}

//Initialise
var myLaptop = Devices.laptop(name: "Aspire 7")
var myMobile = Devices.mobile(name: "Vivo U20")
var myTablet = Devices.tablet(name: "Lenovo T81")

//Access associated value
checkDevice(deviceName: myTablet)


// 5. Write a swift program for enum with raw values.
enum Player: String {
    case userId = "shubham_123"
    case type = "premium"
}

var newPlayer = Player.type

if newPlayer.rawValue == "free" {
    print("Try out our premium mode")
} else if newPlayer.rawValue == "premium"{
    print("Welcome to premium mode")
}


/*
    6. Write a swift program using enumerations to get all cases
    as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory
*/

//With case iteratable
enum Days: Int, CaseIterable {
    case monday = 0, tuesday, wednesday, thursday, friday, saturday, sunday
}

for day in Days.allCases {
    print(day, terminator: " - ")
}

//Without case iteratable
print("\nWeek ends: ", terminator: " ")
enum WeekEnds: Int {
    case saturday, sunday
    
    static let allCases = [saturday, sunday]
}

for day in WeekEnds.allCases {
    print(day, terminator: " ")
}


// 7.  Demonsrate enum cases with parameters (Enum with associated values).
enum PizzaSize2 {
    case small(inches: Int)
    case medium(inches: Int)
    case large(inches: Int)
}

var orderSecond = PizzaSize2.large(inches: 12)
if case let .large(value) = orderSecond {
    print(value)
}

    
// 8. Create an enum with its rawValues of type String and show usage of case to print value of case.
enum Grades: String {
    case mathematics = "AB"
    case biology = "BB"
}

let studentOne = Grades.mathematics.rawValue
let studentTwo = Grades.biology.rawValue

print("S1 Mathematics: ", studentOne)
print("S2 Biology: ", studentTwo)
