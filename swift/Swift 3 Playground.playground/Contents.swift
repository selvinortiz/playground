import UIKit

// Variables
let age          = 32
let name         = "Selvin Ortiz"
let about        = "Christian software developer based in Minnesota."
let hourlyRate   = 55.00
let hoursPerWeek = 40

print("Profile", terminator: ":\n")
print(name, age, about, hourlyRate, separator: "\n")
print("Potential weekly earnings:")
print(hourlyRate * Double(hoursPerWeek))

// Array
var projects = ["CKA", "CE Credit", "DevOps"]
projects.append("Tech Support")

print(projects)
print(projects.count)

projects.remove(at: 1)

print(projects)

// Dictionary
var tasks = [String:Double]()
tasks["Working on CE credit app"] = 2.4
tasks["Working on QR reader app"] = 5.3

print(tasks)

// Random
let rand = arc4random_uniform(10)

print(rand, terminator: "\n\n")

// Loops
var i = 1

while i <= 20 {
    print(i * 7)
    i = i + 1
}

i = 0
var numbers = [1, 10, 20, 30, 40, 50]

while i < numbers.count {
    numbers[i] = numbers[i] + 1
    i += 1
}

print(numbers)

for number in numbers {
    print(number)
}

for (index, value) in numbers.enumerated() {
    numbers[index] = value + 2
}

print(numbers)

var newNumbers = [Double]()
newNumbers = [1, 10, 20, 30, 40, 50]

for (i, v) in newNumbers.enumerated() {
    newNumbers[i] = v / 2
}

print(newNumbers)

// Classes
class Person {
    var age = 0
    var name = ""
    var alive = true
    
    func kill() {
        alive = false
    }
    
    func isAlive() -> Bool {
        return alive
    }
}

var person = Person()

person.age  = 32
person.name = "Selvin Ortiz"

person.kill()

print(person.isAlive())

// Optionals
var number: Int?

print(number)


let userEnteredText = "3"
let userEnteredInteger = Int(userEnteredText)

if let dogYears = userEnteredInteger {
    print(dogYears)
}

// Prime
let num = 8

var isPrime = false

if num % 1 == 0 || num % num == 0 {
    isPrime = true
}

print(isPrime)



func isPrime(num:Int) -> Bool {
    if (num == 1) {
        return true
    }
    
    if (num == 2) {
        return false
    }

    var n = 2
    while n < num {
        if num % n == 0 {
            return false
        }
        
        n += 1
    }
    
    return true
}

print(isPrime(num: 8))



func generateQRCode(from string: String) -> UIImage? {
    let data = string.data(using: String.Encoding.ascii)
    
    if let filter = CIFilter(name: "CIQRCodeGenerator") {
        filter.setValue(data, forKey: "inputMessage")
        let transform = CGAffineTransform(scaleX: 3, y: 3)
        
        if let output = filter.outputImage?.applying(transform) {
            return UIImage(ciImage: output)
        }
    }
    
    return nil
}

let image = generateQRCode(from: "Hacking with Swift is the best iOS coding tutorial I've ever read!")

print(image)
