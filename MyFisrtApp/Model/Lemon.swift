//
//  Cherry.swift
//  MyFisrtApp
//
//  Created by Studente on 01/05/2021.
//

import Foundation

class Lemon: Fruit {
    var number: Int
    
    init(number: Int, name: String, imageLink: String, price: String) {
        self.number = number
        super.init(name: name, imageLink: imageLink, price: price)
    }
}
