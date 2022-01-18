//
//  main.swift
//  Lesson4HomeFiveTasks
//
//  Created by user on 18/1/22.
//

import Foundation

// 1 Task

var array = [String]()
var dlina = 0

for _ in 0...9 {
    var str = ""
    var length = Int.random(in: 1...20)
    for _ in 1...length {
        str.append("A")
    }
    array.append(str)
    dlina = dlina + length
}
print(array)
print("Длина массива: \(dlina) символов.")


// 2 Task

print("Введите мат выражение:")
var str = readLine()!

let expression = NSExpression(format: str)
let result = expression.expressionValue(with: nil, context: nil) as! Int

print("\(str)  = \(result)")


// 3 Task

print("Введите числа через пробел: ")

var numbers = readLine()!
var arrayOfString = numbers.split(separator: " ")
var arrayOfNumbers: [Int] = []

for item in arrayOfString {
    arrayOfNumbers.append(Int(item)!)
}
var newArray = arrayOfNumbers.sorted()

print(newArray.last!)


// 4 Task

print("Введите сторону куба:")
var l = readLine()!

var s = 6 * (Int(l)! * Int(l)!)

print("S (куба) = \(s) см2")

 
// 5 Task

print("Введите имена:")
var userName = readLine()!
var arrayOfNames = userName.split(separator: " ")

print("Какое имя хотите удалить?")

var delName = readLine()!

for _ in arrayOfNames {
    for (i, str) in arrayOfNames.enumerated().reversed() {
        if str == delName {
            arrayOfNames.remove(at: i)
        }
    }
}

print(arrayOfNames)

