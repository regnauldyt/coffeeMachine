//
//  ViewController.swift
//  coffeeMachine
//
//  Created by Regnauldy Tanri on 16/05/19.
//  Copyright © 2019 Regnauldy Tanri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coffeMachine = coffeeMachine(milk: 200, brand: "Kopi")
    

    @IBOutlet weak var numOfMilk: UILabel!
    @IBOutlet weak var numOfBeans: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateData()
        
        print("Number of Milk", coffeMachine.numOfMilk)
    }

    @IBAction func btnAddMilk(_ sender: Any) {
        
        coffeMachine.addMilk(milk: 10)
        
        updateData()
    
        
    }
    
    @IBAction func btnAddBeans(_ sender: Any) {
        
        coffeMachine.addBeans(beans: 20)
        
        updateData()
    }
    
    
    @IBAction func btnMakeCoffee(_ sender: Any) {
        
        coffeMachine.makeCoffee()
        
        updateData()
    }
    
    func updateData(){
        
        numOfMilk.text = String(coffeMachine.numOfMilk)
        
        numOfBeans.text = String(coffeMachine.numOfBeans)
    }
}

