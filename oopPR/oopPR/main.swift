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
    var skill: Skill
    var hp: Int
    var xp: Int
    var level: Int
    
    init(name: String, job: String, weapone: String, skill: Skill, xp: Int, level: Int, hp: Int) {
        self.name = name
        self.job = job
        self.weapone = weapone
        self.skill = skill
        self.xp = xp
        self.level = level
        self.hp = hp
    }
    
    func attack(monster: Monster) {
        monster.hp -= skill.demmage
        if monster.hp > 0 {
            print("\(monster.name)에게 \(skill)! \(skill.demmage)의 피해를 입혔다!")
        }
        else if monster.hp <= 0 {
            print("\(monster.name)에게 \(skill)! \(skill.demmage)의 피해를 입혔다!")
            self.xp += monster.name.xp
            print("\(monster.name)(을)를 물리쳤다! \(monster.name.xp)의 xp(을)를 획득했다!")
        }
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

class Monster {
    var name: NamedMonster
    var hp: Int
    var demmage: Int
    
    init(name: NamedMonster, hp: Int, demmage: Int) {
        self.name = name
        self.hp = hp
        self.demmage = demmage
    }
    
    func attack(human: Human) {
        human.hp -= self.demmage
        print("\(self.name)의 공격! \(human.name)(은)는 \(self.demmage)의 피해를 입었다!")
    }
}

enum NamedMonster {
    case skeleton
    case goblin
    case dragon
    
    var xp: Int {
        switch self {
        case .skeleton:
            return 10
        case .goblin:
            return 20
        case .dragon:
            return 100
        }
    }
}

let user1 = Human(name: "남자성기삽니다", job: "성기사", weapone: "헤머", skill: Skill.attack, xp: 0, level: 1, hp: 100)
let monster1 = Monster(name: NamedMonster.skeleton, hp: 100, demmage: 50)
let monster2 = Monster(name: NamedMonster.goblin, hp: 200, demmage: 100)
let monster3 = Monster(name: NamedMonster.dragon, hp: 10000, demmage: 10000)

user1.attack(monster: monster1)
monster1.attack(human: user1)
user1.attack(monster: monster2)
user1.attack(monster: monster2)
