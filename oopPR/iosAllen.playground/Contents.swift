import UIKit
import Darwin

//for i in 2...9 {
//    for j in 1...9 {
//        print("\(i) X \(j) = \(i * j)")
//    }
//}
//
//for i in 1...100 {
//    if i % 3 == 0 {
//        print("3의 배수 발견: \(i)")
//    }
//}
//
//
//
//
//for i in 1...6 {
//    for j in 1...6 {
//        if j <= i {
//            print("😂", terminator: "")
//        }
//    }
//    print()
//}
//
//
//func body(large: Int, long: Int) {
//    var shape = "*"
//    for _ in 1...long {
//        for _ in 1...large {
//            print(shape, terminator: "")
//        }
//        print("")
//    }
//}
//
//func stick(long: Int) {
//    var shape = "   | |  "
//    for _ in 1...long {
//        print(shape)
//    }
//}
//
//body(large: 11, long: 8)
//stick(long: 4)
//
//let nudePpePero = " | | "
//
//
//func stick(long: Int) {
//    for _ in 1...long {
//        print(nudePpePero)
//    }
//}
//
//func body(shape: String, topping: String) {
//    print("\(topping)\(shape)\(topping)")
//}
//
//func bodyLong(long: Int, shape: String, topping: String) {
//    if shape == "***" {
//        for _ in 1...long {
//            body(shape: shape, topping: topping)
//        }
//    } else {
//        for count in 1...long {
//            if count % 2 != 0 {
//                print(nudePpePero)
//            } else {
//                print(" |0| ")
//            }
//        }
//    }
//}
//func order(stickLong: Int, long: Int, shape: String, topping: String) {
//
//    print("""
//<정보>
//길이: \(long)
//몸통: \(shape)
//토핑: \(topping)
//막대길이: \(stickLong)
//""")
//    print()
//
//    bodyLong(long: long, shape: shape, topping: topping)
//    stick(long: stickLong)
//}
//
//order(stickLong: 4, long: 6, shape: nudePpePero, topping: " ")
//
//
//func pickUpLatter(a: String) -> String {
//    return String(a.randomElement()!)
//}
//
//pickUpLatter(a: "안녕하세요")
//
//var num = 3
//
//var isPrime: Bool = true
//
//for i in 2..<num {
//    if num % i == 0 {
//        isPrime = false
//        break
//    }
//}
//
//if isPrime {
//    print("소수입니다.")
//} else {
//    print("소수가 아닙니다.")
//}
//
//func checkPrimeNumbers(num: Int) -> Bool{
//    for i in 2..<num {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//if checkPrimeNumbers(num: 7) {
//    print("소수입니다.")
//} else {
//    print("소수가 아닙니다.")
//}
//
//
//func primeNumbers(num: Int) {
//    for i in 2..<num {
//        if num % i == 0 {
//            print("소수가 아닙니다.")
//            return
//        }
//    }
//    print("소수입니다.")
//}
//
//primeNumbers(num: 6)

//func pack(num: Int) -> Int {
//    var sum = 1
//
//    for i in 1...num {
//        sum = sum * i
//    }
//    return sum
//}
//
//pack(num: 5)

//func facktorial(num: Int) -> Int {
//    if num <= 1 {
//        return 1
//    }
//    return num * facktorial(num: num - 1)
//}
//
//facktorial(num: 10)

//var number: Int? = 7
//var hello: String? = "안녕하세요"
//var name: String? = "홍길동"
//var newNum: Double? = 5.5
//
//print(number)
//print(hello)
//print(name)
//print(newNum)
//
//if let n = number {
//    print(n)
//}
//
//if let hi = hello {
//    print(hi)
//}
//
//if let num = name {
//    print(num)
//}
//
//if let nenm = newNum {
//    print(nenm)
//}
//
//func numberCheck() {
//    guard let n = number else {return}
//    print(n)
//}
//numberCheck()
//
//func helloCheck() {
//    guard let hi = hello else {return}
//    print(hi)
//}
//helloCheck()
//
//func nameCheck() {
//    guard let name = name else {return}
//    print(name)
//}
//nameCheck()
//
//func newnumCheck() {
//    guard let newNum = newNum else {return}
//    print(newNum)
//}
//newnumCheck()

//let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
//
//func makeLottoNumbers() -> Set<Int> {
//    var lottoNumbers = Set<Int>()
//    while lottoNumbers.count < 6 {
//        lottoNumbers.insert(Int.random(in: 1...45))
//    }
//    return lottoNumbers
//}
//makeLottoNumbers()
//
//func checkOverlap(lottoNumbers: Set<Int>) {
//    let overlapNumbers = myLottoNumbers.intersection(lottoNumbers)
//    if overlapNumbers.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다")
//    } else {
//        let printedOverlapNumbers = overlapNumbers.map { String($0) }.joined(separator: ", ")
//        print("축하합니다! 겹치는 번호는 \(printedOverlapNumbers) 입니다!")
//    }
//}
//checkOverlap(lottoNumbers: makeLottoNumbers())

//let myLottoNumbers: Set<Int> = [1, 2, 3, 4, 5, 6]
//var historyLotto = [String: Set<Int>]()
//
//func makeLottoNumbers() -> Set<Int> {
//    var lottoNumbers = Set<Int>()
//
//    while lottoNumbers.count < 6 {
//        lottoNumbers.insert(Int.random(in: 1...45))
//    }
//
//    var round = historyLotto.count
//    round += 1
//    historyLotto["\(round)회차"] = lottoNumbers
//
//    return lottoNumbers
//}
//
//func checkOverlap(lottoNumbers: Set<Int>) {
//    let overlapNumbers = myLottoNumbers.intersection(lottoNumbers)
//    if overlapNumbers.isEmpty {
//        print("아쉽지만 겹치는 번호가 없습니다")
//    } else {
//        let printedOverlapNumbers = overlapNumbers.map { String($0) }.joined(separator: ", ")
//        print("축하합니다! 겹치는 번호는 \(printedOverlapNumbers) 입니다!")
//    }
//}
//
//func checkResultLotto(round: Int) {
//    if let lottoData = historyLotto["\(round)회차"] {
//        let printLottoData = lottoData.map { String($0) }.joined(separator: ", ")
//        print("\(round)회차의 당첨 번호는 \(printLottoData)입니다")
//    } else {
//        print("No Data")
//    }
//
//}
//
//makeLottoNumbers()
//makeLottoNumbers()
//makeLottoNumbers()
//makeLottoNumbers()
//makeLottoNumbers()
//print(historyLotto)
//checkResultLotto(round: 2)

//enum School {
//    case eleve
//    case middle
//    case high
//    case uni
//}
//
//var yourSchool = School.middle
//
//switch yourSchool {
//case .eleve:
//    print("초딩")
//case .middle:
//    print("중딩")
//case .high:
//    print("고딩")
//case .uni:
//    print("대딩")
//}

//let a: Int? = 7
//print(a)
//
//switch a {
//case .some(let z):
//    print(z)
//case .none:
//    break
//}
//
//switch a {
//case let x?:
//    print(x)
//case .none:
//    break
//}
//
//if case .some(let z) = a {
//    print(z)
//}
//
//if case let x? = a {
//    print(x)
//}
//
//let c: [Int?] = [nil, 2, 3, nil, 5]
//
//for case .some(let z) in c {
//    print(z)
//}
//
//for case let x? in c {
//    print(x)
//}

//func addTwoNumbers(_ a: Int, _ b: Int) -> Int {
//    let c = a + b
//    return c
//}
//
//var x = addTwoNumbers(3, 5)
//var z = addTwoNumbers(4, 6)

enum Coffee {
    case americano
    case latte
    case cappuccino
    
    var price: Int {
        switch self {
        case .americano:
           return 4500
        case .latte:
           return 5000
        case .cappuccino:
           return 5000
        }
    }
}


class Person {
    var name: String
    var money: Int
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
    func buy(price: Int) {
        self.money -= price
    }
    
}

struct CoffeeShop {
    var name: String
    var totalRevenu: Int
    var menu: [Coffee: Int] = [.americano: 4500, .latte: 5000, .cappuccino: 5000]
    var barista: Person
    var pickUpTable: String? {
        didSet {
            if let pickUpTable = pickUpTable {
                print("주문하신 \(pickUpTable) 나왔습니다. 픽업대에서 가져가주세요")
            }
        }
    }
    
    mutating func order(coffee: Coffee, person: Person) {
        print("\(coffee)주세요")
        if person.money > coffee.price {
            person.buy(price: coffee.price)
            totalRevenu += coffee.price
        } else {
            print("잔액이 \(coffee.price - person.money)원 만큼 부족합니다.")
        }
        print("네 \(coffee)주문 받았습니다.")
        takeOutCoffee(coffee: coffee)
    }
    
    mutating func takeOutCoffee(coffee: Coffee) {
        pickUpTable = String("\(coffee)")
    }
}

var person1 = Person(name: "Miss Kim", money: 10000)
var person2 = Person(name: "Mister Lee", money: 10000)
var coffeeShop1 = CoffeeShop(name: "Starbucks", totalRevenu: 1000000, barista: person2)

coffeeShop1.order(coffee: .americano, person: person1)
print(person1.money)
print(coffeeShop1.totalRevenu)
