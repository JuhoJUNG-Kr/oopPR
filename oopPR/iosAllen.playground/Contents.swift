import UIKit

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



func stick(long: Int) {
    let shape = " | |  "
    for _ in 1...long {
        print(shape)
    }
}

func body(shape: String, topping: String) {
    print("\(topping)\(shape)\(topping)")
}

func bodyLong(long: Int, shape: String, topping: String) {
    if shape == "***" {
        for _ in 1...long {
            body(shape: shape, topping: topping)
        }
    } else {
        for count in 1...long {
            if count % 2 != 0 {
                print(" |0| ")
            }
        }
    }
}
func order(stickLong: Int, long: Int, shape: String, topping: String) {
    
    print("""
<정보>
길이: \(long)
몸통: \(shape)
토핑: \(topping)
막대길이: \(stickLong)
""")
    print()
    
    bodyLong(long: long, shape: shape, topping: topping)
    stick(long: stickLong)
}

order(stickLong: 4, long: 6, shape: " | | ", topping: " ")
