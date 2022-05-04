//
//  main.swift
//  oopPR
//
//  Created by 정주호 on 25/03/2022.
//

import Foundation

class UserInformation {
    //기본 저장속성
    var name: String
    var age: Int
    //기본 저장 속성 & 속성 감시자
    var stateMessage: String = "기본 상태 메세지" {
        didSet {
            print("내 상태메세지가 \(oldValue)에서 \(stateMessage)로 변경되었습니다.")
        }
    }
    //지연 저장 속성
    lazy var nickName: String = ""
    lazy var heigth: Double = 175.0
    lazy var weight: Double = 65.0
    
    //계산 속성
    var takeAge: Int {
        get {
            var year = 2022 - age
            return year
        }
        set(year) {
            age = 2022 - year
        }
    }
    
    //생성자 초기화
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

var user1 = UserInformation(name: "홍길동", age: 25)
user1.heigth = 170
user1.weight = 65
user1.nickName = "서자"
user1.stateMessage = "아버지를 아버지라 부르지 못하고...ㅅㅂ"
user1.age


