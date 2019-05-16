//
//  coffeeMachine.swift
//  coffeeMachine
//
//  Created by Regnauldy Tanri on 16/05/19.
//  Copyright © 2019 Regnauldy Tanri. All rights reserved.
//

import Foundation

class coffeeMachine{
    var numOfBeans: Int = 100
    var numOfMilk: Int
    var brand: String
    
    init(milk: Int, brand: String){
        numOfMilk = milk
        self.brand = brand
    }
    
    func addMilk(milk: Int){
        numOfMilk += milk
    }
    
    func addBeans(beans: Int){
        numOfBeans += beans
    }
    
    func makeCoffee(){
        numOfBeans -= 2
        numOfMilk -= 1
    }
}
