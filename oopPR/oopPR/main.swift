//
//  main.swift
//  oopPR
//
//  Created by 정주호 on 25/03/2022.
//

import Foundation

class Human {
    var name: String
    var job: String
    var weapone: String
    var skill: [Skill: Int]
    
    init(name: String, job: String, weapone: String, skill: [Skill: Int]) {
        self.name = name
        self.job = job
        self.weapone = weapone
        self.skill = skill
    }
}

enum Skill {
    case attack
    case magicMissil
    
    var demmage: Int {
        switch self {
        case .attack:
            return 100
        case .magicMissil:
            return 500
        }
    }
}

class monster {
    var name: String
    var hp: Int
    var demmage: Int
    
    init(name: String, hp: Int, demmage: Int) {
        self.name = name
        self.hp = hp
        self.demmage = demmage
    }
}
