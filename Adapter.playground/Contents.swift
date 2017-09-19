//: Playground - noun: a place where people can play

import UIKit


// adaptee
class SimpleCar {
    func sound() -> String {
        return "Tr-tr-tr"
    }
}

// target
protocol SupercarProtocol {
    func makeNoise() -> String
}


class Supercar: SupercarProtocol {
    func makeNoise() -> String {
        return "Wroom-wroom"
    }
}

// adapter
class SupercarAdapter: SupercarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}


let car = SimpleCar()

let adapter = SupercarAdapter(simpleCar: car)

adapter.makeNoise()










