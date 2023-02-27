import UIKit

//1. Check first and last element are equal
var price = [1, 2, 3, 1]
var isEqual = price[0] == price[price.count - 1] ? "true" : "false"

print("Check first & last: ", isEqual)

/*
 2. create a new array with double the length of a given array of
 integers and its last element is the same as the given array
 */
var chocolatesPrice = [1, 2, 3, 4]
var lastElement = chocolatesPrice[chocolatesPrice.count - 1]
var items = Array(repeating: 0, count: chocolatesPrice.count * 2)

items[items.count - 1] = lastElement
print("Concate two arr: ", items)

/*
 3. create a new array, taking first two elements from a given array
 of integers. If the length of the given array is less than 2 use the
 single element of the given array
*/
var match = [0, 1, 2, 3]

print("Get first two: ", match.count < 2 ? match[0] : match.prefix(2))

// 4. Take one array and find out maximum number from that array
var scores = [0, 50, 100, 20, 80, 150]

if let maxScores = scores.max() {
    print("Get max: ", maxScores)
} else {
    print("Maximum scores not found !")
}

//5. Sort array in descending order
var quantity = [0, 5, 6, 2, 10]
//var reversed = quantity.sorted{ $0 > $1 }
var reversed = Array(quantity.sorted().reversed())

print("Sort in reverse: ", reversed)

//6. Numbers from listOfNumbers that are divisible by at least one number from divisors
var listOfNumbers = [1, 2, 3, 10, 100]
var divisors = [2, 5], listOfAnswers = [Int]()

for num in listOfNumbers {
    for div in divisors {
        if num % div == 0 {
            listOfAnswers.append(num)
            break
        }
    }
}
print("Check divisibility", listOfAnswers)

//7. Try all array methods
var marks = [43, 45, 89, 43, 63, 39]

print("\ncontains(63): ",marks.contains(63))
print("access using index: ", marks[marks.count-2])
marks.append(100)
print("append(100)", marks)
print("popLast(): ", marks.popLast() ?? 0)
marks.insert(50, at: 0)
print("insert(): ", marks)
marks.removeFirst()
print("removeFirst(): ", marks)
marks.swapAt(0, marks.count-1)
print("swapAt(): ", marks)
print("count(): ", marks.count)
marks.shuffle()
print("shuffle: ", marks)
marks.removeAll()
print("removeAll: ", marks)
print("isEmpty: ", marks.isEmpty)
