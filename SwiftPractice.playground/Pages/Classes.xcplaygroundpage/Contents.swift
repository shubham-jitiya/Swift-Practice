import Foundation

/*
 1. Create a swift program to demonstrate swift class.
 Which has two variables inside class body.
 Access (Set its values and get its value.) these variables by creating one instance of class.
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
print("Conversion for \(currency.usd) USD:")
print("INR: ", currency.inr) //getter

currency.inr = 1
print("\nConversion for \(currency.inr) INR:")
print("USD: ", currency.usd)


/*
 2. Create a swift program to demonstrate usage of swift class for usage of multiple initializers.
 Create one initializer with two parameters your name and college and another initializer with your name and department.
 You can be able to access these properties using instance of class
*/

class Student {
    var name: String
    var college: String
    var department: String?
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
    }
    
    init(name: String, college: String, department: String) {
        self.name = name
        self.college = college
        self.department = department
    }
}

var studentOne = Student(name: "Shubham", college: "GEC-Gn")

if let dept = studentOne.department {
    print("\n \(studentOne.name) from \(studentOne.college) in \(dept) department")
} else {
    print("\n \(studentOne.name) from \(studentOne.college)")
}


// 3. Create a swift class without initializers and access (write, read) its properties using instance of class.

class Mobile {
    var brand = "Vivo"
    var model = "U20"
    var ram = 4
}

var vivoU20 = Mobile()
print("\nModel: \(vivoU20.brand) \(vivoU20.model) with ram \(vivoU20.ram) GB") //Read
vivoU20.ram = 8 //write
vivoU20.model = "U21"
print("Model: \(vivoU20.brand) \(vivoU20.model) with ram \(vivoU20.ram) GB") //Read
    

//4. Create a swift class which is having code to return square of given number and access this code using class instance.

class Square {
    var num: Int
    var square: Int {
        return num * num
    }
    
    init(num: Int) {
        self.num = num
    }
    
}

let calc = Square(num: 5)
print("\nSquare of \(calc.num): \(calc.square)")


//5.Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes

class Animal {
    var name = "Animal property"
    var findType: String {
        return "\(name)"
    }
    
    func getInfo() -> Void {
        print("From animal")
    }
}

//child class: 1
class Dog: Animal {
//    override var name: String //Can not override stored property
    var dogName: String
    override var findType: String {
        return "\(dogName)"
    }
    
    init(dogName: String) {
        self.dogName = dogName
        super.init()
    }
}

//child class: 2
class GoldenRetriver: Dog {
    var age: Int
    override var findType: String {
        return "\(age)"
    }
    
    init(name: String, age: Int) {
        self.age = age
        super.init(dogName: name)
    }
}

let myDog = Dog(dogName: "Max")
let pet = GoldenRetriver(name: "Max", age: 13)
print("\nMy dog name: \(myDog.dogName)")
print("\(myDog.dogName) is \(pet.age) years old")

/*
 6.Create a swift class example to show use of swift base class which have some implementation inside any method.
 Now demonstrate usage of overriding that method implementation.
*/
class Employee {
    var name: String
    var age: Int
        
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func employeeDetails() {
        print("\n This is full time employee")
    }
}

class PartTime: Employee {
    override func employeeDetails() {
        print("This is part time employee")
    }
}

let newEmployeeOne = Employee(name: "Shubham Jitiya", age: 20)
let newEmployeeTwo = PartTime(name: "Shubham Jitiya", age: 20)
newEmployeeOne.employeeDetails()
newEmployeeTwo.employeeDetails()


/*
 7. Create a swift class with an initializer in a manner that you can create this class using initializing value.
 And one function which takes int input and returns the power of class instance.
 then it should return 5's 3 power (125)
*/

class Calc {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    func doPower(power exp: Int) -> Int {
        var result = 1
        for _ in 0..<exp {
            result = result * value
        }
        print("\n\(instance.value)'s \(exp)", terminator: "")
        return result
    }
}

let instance = Calc(value: 5)
let result = instance.doPower(power: 3)
print(" power \(result)")


/*
 8. Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles
 e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some
 different property which is not common.
*/

class Vehicle {
    var engine: String
    var wheels: Int
    
    init(engine: String, wheels: Int) {
        self.engine = engine
        self.wheels = wheels
    }
    
    func applyBrakes() -> Void {
        print("Brakes applied")
    }
}

class Bike: Vehicle {
    var handle: String
    
    init(engine: String) {
        self.handle = "Short"
        super.init(engine: engine, wheels: 2)
    }
    
    func getInfo() {
        print("\n \(self.engine) bike with \(self.wheels) wheels")
    }
}

class Car: Vehicle {
    var musicSystem: String
    
    init(musicSystem: String, engine: String) {
        self.musicSystem = musicSystem
        super.init(engine: engine, wheels: 4)
    }
    
    func getInfo() {
        print("\(self.engine) car with \(self.wheels) wheels & \(musicSystem) music system")
    }
}

let newBike = Bike(engine: "Petrol")
let newCar = Car(musicSystem: "Sony XC123", engine: "Diesel")
newBike.getInfo()
newCar.getInfo()

/*
 9. Create a person swift class with person name initializer and create one function to greet that person.
 Example: let person1 = Person(name: Joe)
 Person1.greet() // This should print “Hello Joe”
*/

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("\nHello, \(name)")
    }
}
let person1 = Person(name: "Joe")
person1.greet() // This should print “Hello, Joe”

/*
 Create a swift class with some property.
 And then set its value using initializer of class, then perform below actions.
 let example1 = Example()
 Example1.a = “Hello”
 let example2 = example1
 example2.a = “Hi”
 print(example1.a)
 print(example2.a)
 // Consider ‘a’ as string property of example class.
 --> Check these two print outputs and try to find out the reason for that output.
*/
class Example {
    var a: String?
    
    init(a: String? = nil){
        self.a = a
    }
}

let example1 = Example()
example1.a = "Hello"
let example2 = example1 //both refering to same memory location
example2.a = "Hi" //also change the contents present at memory location pointed by example.a

//Reason: Classes is reference type. Hence it does not create separate copies like struct instead it points to same memory. So, if anyone make changes to that memory address it reflects to all the instance who is refering to that memory location.
print()
print(example1.a ?? "Empty")
print(example2.a ?? "Empty")
