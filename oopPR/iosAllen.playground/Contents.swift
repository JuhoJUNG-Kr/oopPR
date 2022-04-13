import UIKit

for i in 2...9 {
    for j in 1...9 {
        print("\(i) X \(j) = \(i * j)")
    }
}

for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견: \(i)")
    }
}




for i in 1...6 {
    for j in 1...6 {
        if j <= i {
            print("😂", terminator: "")
        }
    }
    print()
}
