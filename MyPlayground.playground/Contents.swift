import UIKit

func hello(text: String = "Hello, wrold") {
    print("\(text)")
}
hello()

func greetings(name: String) {
    print("Hi, \(name)")
}
greetings(name: "Misha")

func greetingsReturn(name: String) -> String {
    return "Hello, \(name)"
}
let result = greetingsReturn(name: "Iphone")
print(result)

func mySum(str1: String, str2: String) -> Int {
    return str1.count + str2.count
}
let ressultSum = mySum(str1: "привет", str2: "привет")
print(ressultSum)

func squareOfTheNumber(numb: Int ) -> Int {
    return numb * numb
}
let squareResult = squareOfTheNumber(numb: 4)
print(squareResult)

func subtraction(num1: Int, num2: Int) -> Int {
    return num1 - num2
}
let subtractionResult = subtraction(num1: 10, num2: 2)
print(subtractionResult)

func addition(num2: Int, num3: Int) -> Int {
    return num2 + num3
}
let additionResult = addition(num2: 10, num3: 10)
print(additionResult)

func multiplication(num4: Int, num5: Int) -> Int {
    return num4 * num5
}
let multiplicationResult = multiplication(num4: 10, num5: 10)
print(multiplicationResult)

func division(num6: Int, num7: Int) -> Int {
    return num6 / num7
}
let divisionResult = division(num6: 100, num7: 2)
print(divisionResult)

func square(radius: Double) -> Double {
    return Double.pi * radius * radius
}
let mySquareResult = square(radius: 5)
print(squareResult)

func day(time: Int) -> String {
    switch time {
    case 5..<11:
        print("Сейчас утро")
    case 11..<18:
        print("Сейчас день")
    case 18..<22:
        print("Сейчас вечер")
    case 22..<5:
        print("Сейчас ночь")
    default:
        print("Время суток не наступило")
    }
    return "\(time)"
}

let dayResult = day(time: 6)
print(dayResult)

func numberFunction(primNumbers: Int) -> Bool {
    if primNumbers < 0 || primNumbers > 100 {
        print("Неверное число")
        return false
    }
    if primNumbers < 2 {
        return false
    }
    for i in 2..<primNumbers {
        if primNumbers % i == 0 {
            print("Есть делитель \(i): число не простое")
            return false
        }
    }
    print("Делителей нет, значит число простое")
    return true
}

let numberFunctionResult = numberFunction(primNumbers: 13)
print(numberFunctionResult)

func timeOfYear(numberYear: Int) -> String {
    switch numberYear {
    case 12,1,2:
        print("Сейчас: Зима")
    case 3,4,5:
        print("Сейчас: Весна")
    case 6,7,8:
        print("Сейчас: Лето")
    case 9,10,11:
        print("Сейчас: Осень")
    default:
        print("Введите корректное число!")
    }
    return "Номер месяца: \(numberYear)"
}

let timeOfYearResult = timeOfYear(numberYear: 8)
print(timeOfYearResult)

func factorial(numberFact: Int) -> Int {
    var result = 1
    for i in 2...numberFact {
        result *= i
        print("Результат: \(result)")
    }
    print("Вы ввели число: ")
    return numberFact
}

let factorialResult = factorial(numberFact: 5)
print(factorialResult)

func fibonacci(fibNumber: Int) -> [Int] {
    
    var fibarray: [Int] = [0, 1]
    
    for i in 2..<fibNumber {
        let myResult = fibarray[i - 1] + fibarray[i - 2]
        fibarray.append(myResult)
    }
    return fibarray
}

let resultFibArray = fibonacci(fibNumber: 7)
print(resultFibArray)

func sumMyNumber(summNumber: Int) -> Int {
    guard String(summNumber).count == 4 else {
        return 0
    }
    var compSumNumber = String(summNumber)
        .compactMap {Int(String($0))}
        .reduce(0, +)
    return compSumNumber
    }
let resultSumMyNumber = sumMyNumber(summNumber: 8472)
print(resultSumMyNumber)

func fillterArry(arrayNumber: [Int]) -> [String] {
    let strArrayNumber = arrayNumber
        .map {$0 * $0}
        .compactMap {String($0)}
    return strArrayNumber
}
let resultFillterArry = fillterArry(arrayNumber: [1,5,4,2,7])
print("Квадрат массива: \(resultFillterArry)")

func filterFunc(filter: [Int]) -> [Int] {
    let finalFilter = filter.filter {$0 % 2 == 0}
    return finalFilter
}
let myFilterResult = filterFunc(filter: [1,7,31,22,4,9,12,17])
print("Список четных чисел: \(myFilterResult)")

let array = [1, 7, 31, 22, 4, 9, 12, 17]
array.enumerated().forEach {
    print("Индекс: \($0), Элемент: \($1)")
}

let myArray = ["привет", "шиномонтаж", "три", "арбуз", "два", "луна", "ледокол"]
let resultArray = myArray.map {$0.uppercased()}
    .filter {$0.count > 5}
print(resultArray)

let arrayNumber = [1,7,31,22,4,9,12,17,8,16,38,196,112,3]
let evenNumbers = arrayNumber
    .filter {$0 % 2 == 0}
    .compactMap {String($0)}
let oddNumbers = arrayNumber
    .filter {$0 % 2 != 0}
    .compactMap {String($0)}
print("Четный числа: \(evenNumbers), Нечетные числа: \(oddNumbers)")

let strArray = ["привет", "я", "изучаю", "swift"]
let resultStrArray = strArray.joined(separator: " ")
print(resultStrArray)
