//: Playground - noun: a place where people can play

import UIKit

enum CarType {
    case huge, fast
}

protocol Car {
    func drive()
}

class HugeCar: Car {
    func drive() {
        print("You drive a huge car")
    }
}

class FastCar: Car {
    func drive() {
        print("You drive a fast car")
    }
}

let hugeCar = HugeCar()
hugeCar.drive()

let fastCar = FastCar()
fastCar.drive()

class CarFactory {
    static func produceCar(type: CarType) -> Car {
        
        var car: Car
        
        switch type {
        case .huge:
            car = HugeCar()
        case .fast:
            car = FastCar()
        }
        
        return car
    }
}

let hugeCar1 = CarFactory.produceCar(type: .huge)
let fastCar1 = CarFactory.produceCar(type: .fast)

hugeCar1.drive()
fastCar1.drive()




