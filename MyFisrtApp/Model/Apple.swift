//
//  Apple.swift
//  MyFisrtApp
//
//  Created by Studente on 01/05/2021.
//

import Foundation

class Apple: Fruit {
    
    var color: String
    
    init(name: String, color: String, imageLink: String, price: String) {
        self.color = color
        super.init(name: name, imageLink: imageLink, price: price)
    }
}
