//: Playground - noun: a place where people can play

import UIKit


class FruitShop {
    func buyFruits() -> String {
        return "Fruits"
    }
}

class MeatShop {
    func buyMeat() -> String {
        return "Meat"
    }
}

class MilkShop {
    func buyMilk() -> String {
        return "Milk"
    }
}

class SweetShop {
    func buySweets() -> String {
        return "Sweets"
    }
}

class BreadShop {
    func buyBread() -> String {
        return "Bread"
    }
}

// Facade
class Supermarket {
    
    let fruitShop = FruitShop()
    let meatShop = MeatShop()
    let milkShop = MilkShop()
    let sweetShop = SweetShop()
    let breadShop = BreadShop()
    
    func buyProducts() -> String {
        var products = ""
        
        products += fruitShop.buyFruits() + ", "
        products += meatShop.buyMeat() + ", "
        products += milkShop.buyMilk() + ", "
        products += sweetShop.buySweets() + ", "
        products += breadShop.buyBread()
        
        return "I've bought: " + products
    }
    
}

let sm = Supermarket()
sm.buyProducts()








