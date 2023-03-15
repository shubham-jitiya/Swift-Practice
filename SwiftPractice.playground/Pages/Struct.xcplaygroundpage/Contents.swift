import Foundation

/*
 1.  Create one structure of type Work, which have some
 properties like work location, work hours and one string array of project names.
 And create a function inside structure which returns all project names for the person.
*/

struct Work {
    let location: String
    let hours: Int?
    let projects: [String]
    
    func projectNames() -> [String] {
        return projects
    }
}

var projects = ["Android", "iOS", "Web", "Wordpress"]

var personOne = Work(location: "Ahmedabad", hours: nil, projects: projects)
var personProjects = personOne.projectNames()
for project in personProjects {
    print(project, terminator: ", ")
}


// 2. Create a structure example which demonstrates use of initializer in structures.
struct Fruit {
    let name: String?
    let color: String?
    let weight: Double?
}

//This will give access to default as well as custom initializer
extension Fruit {
    init(_ csv: String) {
           let parts = csv.components(separatedBy: ",")
           self.name = parts[0]
           self.color = parts[1]
           self.weight = Double(parts[2])
       }
}

//default initializer
var fruitOne = Fruit(name: "Banana", color: "Yellow", weight: 0.3)

//Custom initializer
let banana = Fruit("Banana,Yellow,0.3")

print("\n\(fruitOne)")
print(banana)


/*
 3. Create a structure program which can be initialized with parameters
 and it also should be able to initialized without parameters.
*/
struct Fruits {
    let name: String?
    let color: String?
    let weight: Double?
    
    init(name: String? = nil, color: String? = nil, weight: Double? = nil) {
        self.name = name
        self.color = color
        self.weight = weight
    }
}

//initialized with parameters
var mango = Fruits(name: "Mango", color: "Orange", weight: 0.6)

//without parameters
let orange = Fruits()

print("\n\(orange)")
print(mango)

/*
 4. Create one structure which have initializer which takes array of int as input
 returns  two arrays one of all even numbers and another is all odd numbers.
*/

struct EvenOdd {
    let nums: [Int]
    var even: [Int]
    var odd: [Int]
    
    init(nums: [Int], even: [Int] = [], odd: [Int] = []) {
        self.nums = nums
        self.even = even
        self.odd = odd
    }
    
    mutating func separate() {
        for num in nums {
            if num % 2 == 0 {
                even.append(num)
            }else {
                odd.append(num)
            }
        }
    }
}

var numbers = EvenOdd(nums: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
numbers.separate()
print("\nNums: \(numbers.nums)")
print("Even: ", numbers.even)
print("Odd: ", numbers.odd)


/*
 5. Create one swift structure program for person that contains basic details
 like name, age, gender. Then create one array of person with all details. Print all details of that array.
*/

struct Person {
    let name: String, gender: String, age: Int
}

var personDetails: [Person] = []
let joe = Person(name: "Joe", gender: "Male", age: 27)
let harry = Person(name: "Harry", gender: "Male", age: 21)

personDetails.append(joe)
personDetails.append(harry)
print()
for person in personDetails {
    print("Name: \(person.name), Gender: \(person.gender), Age: \(person.age)")
}

/*
 6. Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
 let example1 = Example()
 example1.a = “Hello”
 let example2 = example1
 example2.a = “Hi”
 print(example1.a)
 print(example2.a)
 // Consider ‘a’ as string property of example class.
 --> Check these two print outputs and try to find out the reason for that output.
*/

struct Example {
    var a: String?
    
    init(a: String? = nil){
        self.a = a
    }
}

var example1 = Example()
example1.a = "Hello"
var example2 = example1
example2.a = "Hi"

//Reason: Struct is value type. Hence it has two separate copies and value does not change
print()
print(example1.a ?? "Empty")
print(example2.a ?? "Empty")


/*
 7. Try to figure out basic difference between class and structures and give a demo for same.
*/

struct Employee {
    var salary = 0
    mutating func incrementSalary(increase: Int) {
        salary = increase //can not do this without mutating keyword, but possible in class
    }
    
    //Can not deinitialize
}

//1. value type: Both var keeps separate copies
var emp0 = Employee()
emp0.salary = 100
var emp1 = emp0
emp0.salary = 50000
print()
print(emp0.salary)
print(emp1.salary)

//Update value
var emp2 = Employee()
emp2.incrementSalary(increase: 500)
emp2.salary


class Employee2 {
    var salary = 0
    
    func incrementSalary(increase: Int) {
        salary = increase //can not do this without mutating keyword, but possible in class
    }
    
    deinit {
        print("Deinitialized...")
    }
}

//Reference type: Both var refers to same memory location &
//by changing any one variables value it affects change in every variable's value that has reference to it
var em0 = Employee2()
em0.salary = 100

var em1 = em0
em0.salary = 50000 //also changes value of emp0

print()
print(em0.salary)
print(em1.salary)

var em2: Employee2? = Employee2()
em2 = nil

/*
 Differece:
 struct: value type, no deinitializer, mutating keyword is used to update
 classes: reference type, deinitializer, no need of mutating keyword, inheritance
*/
