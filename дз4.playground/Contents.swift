import UIKit

//Задание первое:

class Person: CustomStringConvertible {
    var name: String
    var surname: String
    var age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
    var description: String {
        return "Имя: \(name), Фамилия: \(surname), Возраст: \(age)"
    }
}

class Director: Person {
    var experience: Int
    var rating: Int
    
    init(name: String, surname: String, age: Int, experience: Int, rating: Int) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
    
}

class Student: Person {
    var classNumber: Int
    var subjectAndAssessment: (String, Int)
    
    init(name: String, surname: String, age: Int, сlassNumber: Int, subjectAndAssessment: (String, Int)) {
        self.classNumber = сlassNumber
        self.subjectAndAssessment = subjectAndAssessment
        super.init(name: name, surname: surname, age: age)
    }
    func StudentMethod() -> String {
        return "Фамилия ученика: \(surname), Имя ученика: \(name), Номер класса: \(classNumber), Предмет и оценка: \(subjectAndAssessment)"
    }
}

struct Address {
    var x: Int
    var y: Int
    var streetName: String
    init(x: Int, y: Int, streetName: String) {
        self.x = x
        self.y = y
        self.streetName = streetName
    }
}
    
class School: CustomStringConvertible {
        var arrayOfStudents: [String]
        var address: Address
        var nameSchool: String
        var dir: Director
        
        init(arrayOfStudents: [String], address: Address, nameSchool: String, dir: Director) {
            self.arrayOfStudents = arrayOfStudents
            self.address = address
            self.nameSchool = nameSchool
            self.dir = dir
        }
    var description: String {
        return """
            Название школы: \(nameSchool)
            Адрес: \(address)
            Массив студентов: \(arrayOfStudents)
            Директор: \(dir)
            """
    }
        func SchoolInformation() -> String {
            return "Массив студентов: \(arrayOfStudents), адрес школы: \(address), название школы: \(nameSchool), директор: \(dir)"
        }
    }
    
    let resultStudent = Student(name: "Дима", surname: "Бабак", age: 27, сlassNumber: 4, subjectAndAssessment: ("Математика", 2))
    let director = Director(name: "Игнат", surname: "Жопов", age: 97, experience: 1, rating: 2)
    let adres = Address(x: 12, y: 04, streetName: "Ленина 16")
let school = School(arrayOfStudents: ["Дима", "Анатолий", "Александр"], address: adres, nameSchool: "Хогвардс", dir: director)
print("Информация о школе: \(school)")



//Задание второе:

protocol PaymentMethod {
    var balance: Double { get set }
    func pay(amount: Double) -> Bool
}

class CreditCard: PaymentMethod {
    var balance: Double

    init(balance: Double) {
        self.balance = balance
    }

    func pay(amount: Double) -> Bool {
        let totalAmount = amount + amount * 0.01
        if balance >= totalAmount {
            balance -= totalAmount
            return true
        } else {
            return false
        }
    }
}

class CryptoWallet: PaymentMethod {
    var balance: Double

    init(balance: Double) {
        self.balance = balance
    }

    func pay(amount: Double) -> Bool {
        if balance >= amount {
            balance -= amount
            return true
        } else {
            return false
        }
    }
}

func processPayment(using method: PaymentMethod, amount: Double) {
    if method.pay(amount: amount) {
        print("Платеж на сумму \(amount) прошел успешно.")
    } else {
        print("Недостаточно средств для платежа на сумму \(amount).")
    }
}

let card = CreditCard(balance: 1000)
let wallet = CryptoWallet(balance: 50)

processPayment(using: card, amount: 100)
processPayment(using: wallet, amount: 60)

