import Foundation

//Error Handling

//1. Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.

enum PasswordError: Error {
    case emptyPassword
    case passwordTooShort
}

func validatePassword(password: String) throws -> Void {
    guard !password.isEmpty else {
        throw PasswordError.emptyPassword
    }
    
    guard password.count >= 8 else {
        throw PasswordError.passwordTooShort
    }
    print("Password is valid")
}

do {
    var pswd = "12345"
    try validatePassword(password: pswd)
} catch PasswordError.emptyPassword {
    print("Password can not be empty")
} catch PasswordError.passwordTooShort {
    print("Password must be atlesat 8 character long")
}


//2. Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum ShoppingError: Error {
    case itemIsNotAvailable
}

class ShoppingCart {
    var items: [String: Int]
    
    init(items: [String: Int]) {
        self.items = items
    }
    
    func addToCart(key: String) throws -> Void {
        guard let qty = items[key], qty != 0 else {
            items[key] = nil
            throw ShoppingError.itemIsNotAvailable
        }
        items[key] = qty - 1
        print("Item addedd successfully: stock \(items[key] ?? 0)")
    }
}

var itemsAvailable = ["Laptop" : 5, "Mobile" : 1]
var myCart = ShoppingCart(items: itemsAvailable)

do {
    myCart.items["Mobile"]
    try myCart.addToCart(key: "Mobile") //0
    try myCart.addToCart(key: "Mobile") //0

} catch ShoppingError.itemIsNotAvailable {
    print("Item is not available")
    myCart.items["Mobile"]
} catch {
    print("Something went wrong")
}

