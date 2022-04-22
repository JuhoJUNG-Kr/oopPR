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

var number: Int? = 7
var hello: String? = "안녕하세요"
var name: String? = "홍길동"
var newNum: Double? = 5.5

print(number)
print(hello)
print(name)
print(newNum)

if let n = number {
    print(n)
}

if let hi = hello {
    print(hi)
}

if let num = name {
    print(num)
}

if let nenm = newNum {
    print(nenm)
}

func numberCheck() {
    guard let n = number else {return}
    print(n)
}
numberCheck()

func helloCheck() {
    guard let hi = hello else {return}
    print(hi)
}
helloCheck()

func nameCheck() {
    guard let name = name else {return}
    print(name)
}
nameCheck()

func newnumCheck() {
    guard let newNum = newNum else {return}
    print(newNum)
}
newnumCheck()
