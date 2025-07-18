import UIKit

//Задания 1 - 2:

enum TimeOfYear: Int {
    case winter
    case spring
    case summer
    case autumn
}

func monthТumber(number: Int ) -> TimeOfYear? {
    
    switch number {
    case 6...8:
        return .summer
    case 9...11:
        return .autumn
    case 12,1,2:
        return .winter
    case 3...5:
        return .spring
    default:
        return nil
    }
}
let resultMonthТumber = monthТumber(number: 4)
if let optionalResultMonthТumber = resultMonthТumber {
    print("Пора года: \(optionalResultMonthТumber)")
}

//Задание 3:

func optionalArray(myArray: [String?]) -> Int {
    let resultMyArray = myArray.compactMap { $0 }
    let join = resultMyArray.joined(separator: " ")
    print("Объединённая строка: \(join)")
    
    let nilCount = myArray.filter { $0 == nil }.count
    return nilCount
}

let resultOptionalArray = optionalArray(myArray: ["один", nil, "два", nil, "три"])
print("Количество nil: \(resultOptionalArray)")

//Задание 4

//Пример 1:
let myOptional: String? = "Привет, как дела"
if let resultMyOptional = myOptional {
    print("Расспаковка прошла успешно: \(resultMyOptional)")
}

//Пример 2:
func funcOptional(str: String?) -> String {
    guard let resultStr = str else {
        return "Ошибка"
    }
    return resultStr
}
let unpackingOptional = funcOptional(str: "Я изучаю Swift")
print("Расспаковка прошла успешно: \(unpackingOptional)")

//Пример 3:
func ThirdWay(strOpt: String?) -> String {
    if let strOpt {
        return "Расспаковка прошла успешно: \(strOpt)"
    }else{
        return "Нет значений"
    }
}
let resultThirdWay = ThirdWay(strOpt: "Результат расспаковки")
print(resultThirdWay)

//Способ 4:
func optionalUnpacking(myStr: String?) -> String {
    if let optResult = myStr {
        return "Расспаковка прошла успешно: \(optResult)"
    }else{
        return "Расспаковка не удалась"
    }
}
let resultOptionalUnpacking = optionalUnpacking(myStr: "Опционал расспакован")
print(resultOptionalUnpacking)
