import Foundation

//1. powers of 2 that are less than or equal to N
var num = 100, power = 2

while power <= num {
    print(power, terminator: ", ")
    power *= 2
}

//2. NxN asterisks
var rows = 3

print("\n")
for _ in 0..<rows {
    for _ in 0..<rows {
        print("*", terminator: "")
    }
    print("")
}

//3. Left most triangle
rows = 4

print()
for row in 0..<rows {
    for _ in 0...row {
        print("*", terminator: "")
    }
    print("")
}

//4. ith row - n-1 spaces, followed by i*2-1 asterisks
rows = 4

print()
for i in 1...rows {
    for _ in 0..<(rows-i) {
        print(" ", terminator: "")
    }
    for _ in 1...2 * i - 1 {
        print("*", terminator: "")
    }
    print()
}
print()

//5. Check prime or not
var checkNum = 17
var isPrime = true

if checkNum == 1 || checkNum == 0 {
    isPrime = false
} else {
    for num in 2..<checkNum {
        if checkNum % num == 0 {
            isPrime = false
            break
        }
    }
}
print(isPrime)
