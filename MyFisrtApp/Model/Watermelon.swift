//
//  Watermelon.swift
//  MyFisrtApp
//
//  Created by Studente on 01/05/2021.
//

import Foundation

class Watermelon: Fruit {
    var kg: Double
    
    init(name: String, imageLink: String, price: String, kg: Double) {
        self.kg = kg
        super.init(name: name, imageLink: imageLink, price: price)
    }
}
