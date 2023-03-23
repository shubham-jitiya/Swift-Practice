import Foundation

//1. Can we extend enum
enum Weekends {
    
}

struct Weeks {
    
}

//enums & structs can not be extended only classes can be extended
//class A: Weeks {
//
//}


//2. Can we use private with init - Yes, for singleton
class DemoOne {
    static let shared = DemoOne()
    private(set) var num = 1
    
    private init() {
        
    }
    
    func test() {
        print("Testing ...")
    }
}

//var demoOne = DemoOne() //We can not create instance of private
DemoOne.shared.test()
DemoOne.shared.num //can get
//DemoOne.shared.num = 5 //We can not set


//4. Fatal error:
//      - When we attempt to read an unowned reference but object 0x28020___ was already deallocated


//5. Can we override static property - No, stored or computed both can not be override
class Game {
    static var winningScore = 10
    //    static var winningScore: Int {
    //        return 10
    //    }
}

//Some game may have different winning score
class Badminton: Game {
    //override static var winningScore = 20 //Can not override stored property
}

//6. Example of Will set & did set
class Bank {
    var accountBalance: Double {
        
        //executes after new value assigned
        didSet {
            print("Did set called")
        }
        
        //executes before new value assigned
        willSet(newTrasaction) {
            print("Will set called ...")
        }
    }
    
    init(accountBalance: Double) {
        self.accountBalance = accountBalance
    }
}

let myAccount = Bank(accountBalance: 10_000)
myAccount.accountBalance += 5000
print(myAccount.accountBalance)


//7. struct can not be final
//struct FinalClass {
//    final var marks: Int
//
//    init(marks: Int) {
//        self.marks = marks
//    }
//}

//8. Override computed property
class OverrideClass {
    var accountBalance: Double {
        return 10.0
    }
}

class NewClass: OverrideClass {
    override var accountBalance: Double {
        return 10.0
    }
}

var newClass = NewClass()
newClass.accountBalance

//9. Not able to use weak: we have to make protocol class only
protocol X3: AnyObject {
    
}

class A1 {
    weak var delegate: X3?
}


//Accessing array of dictionary
//var array = [[1: "Hello"], [2: "Hi.."]]
struct Messages {
    var conversation: [[Int: String]]
    subscript(at getMsg: Int) -> String? {
        get {
            for message in conversation {
                if let msg = message[getMsg] {
                    return msg
                }
            }
            return nil
        }
    }
}

var array = [[1: "Hello"], [2: "Hi"]]
var messages = Messages(conversation: array)

if let name = messages[at: 3] {
    print("\nMessage found: ", name)
} else {
    print("\nMessage not found")
}

