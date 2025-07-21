import UIKit

//Задание 1:
var number1: [Int] = [0,2,3,4,5,6,7,8,9,10,11,12,13,14]
var number2 : [Int] = [15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
number1 += number2
print(number1)

//Задание 2:
func myArray(intArray: [Int]) -> [Int] {
    let newIntArray = intArray.map {$0 * $0}
    return newIntArray
}
let resultMyArray = myArray(intArray: [1,4,6,9])
print(resultMyArray)

//Задание 3
func intArray(number: [Int]) -> [Int] {
    let newNumber = number.filter {$0 % 2 == 0}
    return newNumber
}
let resultIntArray = intArray(number: [6,7,17,65,223,61,537,2,2346,42])
print(resultIntArray)

//Задание 4:
var infBook = (name: "Властелин колец", author: "Толкин" , yearOfPublication: 70)
print(infBook)

//Задание 4:
func information(parameter: (tittle: String, author: String, year: Int)) -> String {
    return ("Книга: \(parameter.tittle), автор: \(parameter.author), год: \(parameter.year)")
}

let resultInformation = information(parameter: (tittle: "Властелин колец", author: "Толкин", year: 1955))
print(resultInformation)

//Задание 5:
var films: [String] = ["Тихоокеанский рубеж", "Ремпейдж", "После нашей эры", "Мстители", "Война будущего"]
films.append("Время")
print(films)

films.remove(at: 0)
print(films)

//Задание 6:
for (index, name) in films.enumerated() {
    print("Номер: \(index + 1), название: \(name)")
}

//Задание 7:
var myDict: [String: String] = [
    "Belarus": "Minsk",
    "China": "Beijing",
    "Japan": "Tokyo"
]
print(myDict)
myDict["Armenia"] = "Yerevan"
print(myDict)

@MainActor func getCountryInfo(country: String) -> String {
    if let capital = myDict[country] {
        return "Столица страны \(country): \(capital)"
    }else{
        return "Страны не существует"
    }
}
print(getCountryInfo(country: "Belarus"))

//Задание 8:
let fruit: Set = ["яблоко", "банан", "киви", "дыня", "виноград"]
let myFruit: Set = ["мандарин", "гранат", "яблоко", "виноград"]

let result = fruit.intersection(myFruit)
print("Любимые фрукты, которые есть дома: \(result)")

let favoriteFruits: Set = ["яблоко", "банан", "киви", "дыня", "виноград"]
let fruitsAtHome: Set = ["мандарин", "гранат", "яблоко", "виноград"]

let missingFruits = favoriteFruits.subtracting(fruitsAtHome)

print("Любимые фрукты, которых нет дома: \(missingFruits)")

//Задание 9:
func areEqual<T: Equatable>(a: T, b: T) -> Bool {
    if a == b {
        print("Два значения равны!")
        return true
    }else{
        print("Эти значения не равны!")
        return false
    }
}
print("Результат: \(areEqual(a: 100, b: 100))")
print("Результат: \(areEqual(a: "Привет", b: "Привет"))")
print("Результат: \(areEqual(a: true, b: false))")

//Задание 10:
var myDictionary: [String:String] = ["Я":"первый", "ТЫ":"второй"]

let resultDict = myDictionary.map { ($0.key, $0.value.uppercased()) }
print(resultDict)

var mySet: Set = [1,2,3,4,5]

let resultMySet = mySet.filter {$0 >= 3}
print(resultMySet)




