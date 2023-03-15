import Foundation

//Exercise: properties - subscripts - methods - inheritance

/*
 1. Create an example using swift to demonstrate use of get only properties.
 Create a class with a property which value cannot be set outside of class.
*/

class Squares {
    private let values = Array(0...10)
    
    subscript(index: Int) -> Int {
        get {
            return index * values[index]
        }
    }
}

let square = Squares()
print("Square: \(square[10])")
//square.values[3] = 100 //Can not be accessed


/*
 2. Create a swift program to demonstrate usage of computed properties using getter and setter.
*/

class Currency {
    var inr: Float
    var usd: Float {

        //read value
        get {
            return inr / 82.06
        }

        //update value
        set(conversion) {
            inr = conversion * 82.06
        }
    }

    init(inr: Float = 1.0) {
        self.inr = inr
    }
}

var currency = Currency()

currency.usd = 10
print("\nConversion for \(currency.usd) USD:")
print("INR: ", currency.inr) //getter

currency.inr = 1
print("\nConversion for \(currency.inr) INR:")
print("USD: ", currency.usd)


/*
 3. Create a swift program to show usage of stored properties.
*/

class Laptop {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var newLaptop = Laptop(name: "Acer aspire 7")
print("\nLaptop: \(newLaptop.name)")


/*
 4. Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
     - we can use methods or computed properties
*/

class Teacher {
    private var name: String = ""
    private var subject: String = ""
    
    func setName(teacherName: String) {
        name = teacherName
    }
    func setSubject(subjectName: String) {
        subject = subjectName
    }
    func getName() -> String{
        return name
    }
    func getSubject() -> String {
        return subject
    }
}

let physicsTeacher = Teacher()
//physicsTeacher.name = "" //Not accessible private property
physicsTeacher.setName(teacherName: "Shubham")
physicsTeacher.setSubject(subjectName: "Physics")

print("\nTeacher name: ", physicsTeacher.getName())
print("Subject assigned: ", physicsTeacher.getSubject())


/*
 5. Create one swift class which have two properties name and id,
 the class must have one initializer to set that properties.
 And create one array of that class types.
*/

class Intern {
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

var nativeMobileIntern: [Intern] = []
nativeMobileIntern.append(Intern(name: "Shubham", id: 101))
nativeMobileIntern.append(Intern(name: "Tirth", id: 102))
nativeMobileIntern.append(Intern(name: "Ankit", id: 103))
print()
for (idx, intern) in nativeMobileIntern.enumerated() {
    print(idx + 1, intern.name, intern.id)
}


//6. Create one example of usage of willSet and didSet.
class Bank {
    var accountBalance: Double {
        
        //executes after new value assigned
        didSet {
            sendNotificationToUser()
        }
        
        //executes before new value assigned
        willSet(newTrasaction) {
            if newTrasaction >= 10_00_000 {
                sendNotificationToAuditor()
            }
        }
    }
    
    init(accountBalance: Double) {
        self.accountBalance = accountBalance
    }
    
    func depositMoney(amount credit: Double) {
        accountBalance += credit
    }
    
    func withDrawMoney(amount debit: Double) -> Void {
        accountBalance -= debit
    }
    
    func sendNotificationToUser() {
        print("Account balance updated.\nUpdated balance: \(accountBalance)")
    }
    
    func sendNotificationToAuditor() {
        print("\nWarning: Please check this transaction!")
    }
}

let myAccount = Bank(accountBalance: 10_000)
myAccount.depositMoney(amount: 5000000)
//myAccount.accountBalance


//7.  Create one lazy stored property in a class and show usage of it.
class ComplexTask {
    static var value: Int = 1
    static var result: Int = 0
    
    static func doCompleteTask() -> Int {
        var task: [Int] = []
        
        for i in value...10000 {
            task.append(i)
        }
        result = task.first ?? 0
        return result
    }
}

class Sample {
    lazy var complexTask: Int = {
        ComplexTask.doCompleteTask()
    }() //not calculated until first time used
}

var newEmployee = Sample() //If complexTask is not defined as lazy then object will be created only after completion of it. Some times it may take longer
//newEmployee.complexTask


/*
 8. Create one class as Base type Person
 which has common properties like name, occupation, etc.
 Create two child classes from the person which are Student, Employee and
 this two-child classes must have base properties and some other properties also.
 Example, student have college, but Employee have company. And demonstrate the usage of inheritance
 */

class Person {
    let name: String
    var occupation: String?
    
    init(name: String) {
        self.name = name
        self.occupation = nil
    }
    
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}

class Student: Person {
    var college: String
    var department: String
    
    init(name: String, college: String, department: String) {
        self.college = college
        self.department = department
        super.init(name: name)
    }
}

class Employee: Person {
    var company: String
    
    init(name: String, company: String, occupation: String) {
        self.company = company
        super.init(name: name, occupation: occupation)
    }
}

let studentOne = Student(name: "Jitiya Shubham", college: "GEC-Gn", department: "CE")
print("\nStudent: \(studentOne.name) is in \(studentOne.college) studying \(studentOne.department)")

let employeeOne = Employee(name: "Jitiya Shubham", company: "Simform solutions", occupation: "Software engineer")
print("Employee: \(employeeOne.name) is \(employeeOne.occupation ?? "Trainee") in \(employeeOne.company)")


// 9. Create one structure to show usage of mutating function in swift.
struct EmployeeData {
    var salary = 0
    mutating func incrementSalary(increase: Int) {
        salary = increase //can not do this without mutating keyword, possible in class
    }
}

var emp1 = EmployeeData()
print("\nInitial salary: \(emp1.salary)")
emp1.incrementSalary(increase: 500)
print("Incremented salary: ",emp1.salary)


//10. Create one class inheritance demo to show usage of method overriding
class GoldenRetriever {
    func getColor() -> Void {
        print("\nThis is golden in color from America")
    }
}

class Canadian: GoldenRetriever {
    override func getColor() -> Void {
        print("This is white in color from Canada")
    }
}

var myPetOne = GoldenRetriever()
myPetOne.getColor()
var myPetTwo = Canadian()
myPetTwo.getColor()


/*
 11.  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output // error
*/
class ClassA {
    func methodOne() {
        print("This is method - 1 from class A")
    }
    static func methodTwo() {
        print("This is method - 2 from class A (Static)")
    }
}

class ClassB: ClassA {
    override func methodOne() {
        print("(Overriden) This is method - 1 from class B")
    }
    
    //We can't override static method
//    override static func methodTwo() {
//        print("This is method - 2 from class A (Static)")
//    }
}


/*
 13. Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.
 Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input. //failable initialiser
*/
enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    init?(day: Int) {
        guard let weekday = Weekday(rawValue: day) else {
            return nil
        }
        self = weekday
    }
}

class DaysOfWeek {
    private var weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    subscript(day: Int) -> Weekday? {
        return Weekday(day: day)
    }
}

var specialDay = DaysOfWeek()
if let day = specialDay[1] {
    print("\nDay is \(day)")
} else {
    print("Invalid day entered [Enter between 1-7]")
}


//14. Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.
struct Name {
    var string: String
    subscript(index: Int) -> Character {
        var arrayOfCharacter: [Character] = Array(string)
        if index >= 0 && index < arrayOfCharacter.count {
            return arrayOfCharacter[index]
        }
        return "X"
    }
}

var name = Name(string: "Shubham")
print("\nchar at 6: \(name[6])")


/*
 15. Create one swift subscript program which takes range as input and returns the string between the ranges.
 */
struct StringRange {
    private let str: String
    
    init(str: String) {
        self.str = str
    }

    subscript(range: Range<Int>) -> String? {
        //Check valid rangeyouyou
        guard range.lowerBound >= 0 && range.upperBound <= str.count else {
            return nil
        }
        
        let startIndex = str.index(str.startIndex, offsetBy: range.lowerBound)
        let endIndex = str.index(str.startIndex, offsetBy: range.upperBound)
        return String(str[startIndex..<endIndex])
    }
}

let str = StringRange(str: "Shubham")
if let substring = str[2..<4] {
    print
    print("\n\(substring)")
} else {
    print("Invalid range")
}


/*
 16.  I have one integer array and create one function which takes range as input and returns all elements between the range.
*/
func numberBetween(arr: [Int], range: Range<Int>) -> [Int]? {
    guard range.lowerBound >= 0 && range.upperBound <= arr.count else {
        return nil
    }
    let startIndex = arr.index(arr.startIndex, offsetBy: range.lowerBound)
    let endIndex = arr.index(arr.startIndex, offsetBy: range.upperBound)
    return Array(arr[startIndex..<endIndex])
}

var serialNumber = Array(20...30)
print("\n\(serialNumber)")
if let elements = numberBetween(arr: serialNumber, range: 3..<5) {
    print(elements)
} else {
    print("Enter a valid range")
}

//17.  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
struct StudentData {
    var studentDetails: [[Int: String]]
    subscript(at enrollmentNo: Int) -> String? {
        get {
            for student in studentDetails {
                if let student = student[enrollmentNo] {
                    return student
                }
            }
            return nil
        }
    }
}

//var array = [[1: "Hello"], [2: "Hi.."]]
var array = [[1: "Jitiya Shubham"], [2: "Sartanpara Shyam"]]
var studentData = StudentData(studentDetails: array)
if let name = studentData[at: 1] {
    print("\nStudent name: ", name)
} else {
    print("\nStudent is not present")
}


//18.  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.
struct PersonTwo {
    let name: String
    var age: Int
    let birthdate: String
    
//    subscript(name: String) -> String? {
//        return name + String(age) + birthdate
//    }
}

var personOne = PersonTwo(name: "Shubham", age: 20, birthdate: "13-02-2002")
var personTwo = PersonTwo(name: "Bhakti", age: 20, birthdate: "19-03-2001")
var person: [PersonTwo] = [personOne, personTwo]

extension Array where Element == PersonTwo {
    subscript(name: String) -> (name: String, age: Int, birthdate: String)? {
        for person in self {
            if person.name == name {
                return (person.name, person.age, person.birthdate)
            }
        }
        return nil
    }
}

if let studentData = person["Shubham"] {
    print("\n\(studentData)")
} else {
    print("Invalid range")
}


//19. Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Music {
    var singer: String
    var composer: String
    
    init(singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
    }
}

class HipHop: Music {
    var title: String
    
    init(title: String, singer: String, composer: String) {
        self.title = title
        super.init(singer: singer, composer: composer)
    }
}

class Classical: Music {
    var title: String
    
    init(title: String, singer: String, composer: String) {
        self.title = title
        super.init(singer: singer, composer: composer)
    }
}

var hiphop = HipHop(title: "Hip-Hop", singer: "Singer: Hip - hop", composer: "Composer: Hip-hop")
var classical = Classical(title: "Classical", singer: "Singer: classical", composer: "Composer: classical")

print("\nTitle: \(hiphop.title) | Singer: \(hiphop.singer) | Composer: \(hiphop.composer)")
print("Title: \(classical.title) | Singer: \(classical.singer) | Composer: \(classical.composer)")


//20. Create a swift class with properties which can be read-write outside of class.
class MyClass {
    var name: String
    var age: Int

    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var classTen = MyClass(name: "Shubham", age: 20)
print("\nName: \(classTen.name)")
print("Age: \(classTen.age)")

