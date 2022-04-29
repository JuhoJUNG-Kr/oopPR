//
//  main.swift
//  oopEX
//
//  Created by 정주호 on 29/04/2022.
//

import Foundation

class Book {
    var title: String
    var price: Int
    var company: String
    var writer: String
    var totalPage: Int
    
    init(title: String, price: Int, company: String, writer: String, totalpage: Int) {
        self.title = title
        self.price = price
        self.company = company
        self.writer = writer
        self.totalPage = totalpage
    }
}

var book1 = Book(title: "이방인", price: 8000, company: "믿음사", writer: "알베르트 카뮈", totalpage: 200)

var book2 = Book(title: "스위프트", price: 10000, company: "Apple", writer: "Steve Jabs", totalpage: 300)

book1.company = "문학과 지성"

class Movie {
    var name: String
    var jenre: String
    var actor: String
    var director: String
    var day: Int
    
    init (n: String, j: String, a: String, d: String, day: Int) {
        self.name = n
        self.jenre = j
        self.actor = a
        self.director = d
        self.day = day
    }
}

var movie1 = Movie(n: "달콤한 인생", j: "느와르", a: "이병헌", d: "김지운", day: 12)
