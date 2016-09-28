//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Joanna Tzu-Hsuan Huang on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry = true
    
    init (firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        if isHungry == true && service.isInRange(destination: home){
            return true
        } else {
            return false
        }
    }
    
}
