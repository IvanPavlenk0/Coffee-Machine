//
//  ViewController.swift
//  Test project
//
//  Created by Ivan Pavlenko on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coffeMachine1 = CoffeeMachine()
        coffeMachine1.espresso()
        coffeMachine1.espresso()
        coffeMachine1.addCoffeeBeans()
        coffeMachine1.espresso()
        coffeMachine1.cappuccino()
        coffeMachine1.addMilk()
        coffeMachine1.cappuccino()
        coffeMachine1.cappuccino()
        coffeMachine1.addWater()
        coffeMachine1.cappuccino()
        coffeMachine1.cappuccino()
        
    }


}


class CoffeeMachine {
    
    var coffeeBeans: Int = 10   //gramm
    var water: Int = 100        //milliliters
    var milk: Int = 0           //milliliters
    let beansEspresso: Int = 9
    let waterEspresso: Int = 35
    let beansСappuccino: Int = 10
    let waterСappuccino: Int = 30
    let milkСappuccino: Int = 200
    
    func espresso() {
        if checkCoffee(beansEspresso) && checkWater(waterEspresso) {
            makeEspresso()
        }
    }
    func cappuccino() {
        if checkCoffee(beansСappuccino) && checkWater(waterСappuccino) && checkMilk(milkСappuccino) {
            makeCappuccino()
        }
    }
    
    private func checkCoffee(_ beansForCup: Int) -> Bool {
//        print("Coffee in machine \(coffeeBeans)")
        if coffeeBeans >= beansForCup {
            return true
        }
        else {
            print("Add coffee beans")
            return false
        }
    }
    
    private func checkWater(_ waterForCup: Int) -> Bool {
//        print("Water in machine \(water)")
        if water >= waterForCup {
            return true
        }
        else {
            print("Add water")
            return false
        }
    }
    
    private func checkMilk(_ milkForCup: Int) -> Bool {
        if milk >= milkForCup {
            return true
        }
        else {
            print("Add milk")
            return false
        }
    }
    
    func addCoffeeBeans() {
//        print("Was beans \(coffeeBeans)")
        coffeeBeans += 30
//        print("Now beans \(coffeeBeans)")
    }
    
    func addWater() {
//        print("Was water \(water)")
        water += 100
//        print("Now water \(water)")
    }
    
    func addMilk() {
        milk += 500
    }
    
    private func makeEspresso() {
        coffeeBeans -= beansEspresso
        water -= waterEspresso
        print("Take Your Espresso!")
    }
    
    private func makeCappuccino() {
        coffeeBeans -= beansСappuccino
        water -= waterСappuccino
        milk -= milkСappuccino
        print("Take Your Cappuccino!")
    }
    
}

