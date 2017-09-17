//: Playground - noun: a place where people can play

import UIKit


protocol Car {
    func drive()
}

class LittleSizedCar: Car {
    func drive() {
        print("Driving a little car")
    }
}

class MiddleSizedCar: Car {
    func drive() {
        print("Driving a middle car")
    }
}

protocol Bus {
    func drive()
}

class LittleSizedBus: Bus {
    func drive() {
        print("Drive a little bus")
    }
}

class MiddleSizedBus: Bus {
    func drive() {
        print("Drive a middle bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class LittleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Little bus created")
        return LittleSizedBus()
    }
    
    func produceCar() -> Car {
        print("Little car created")
        return LittleSizedCar()
    }
}

class MiddleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Middle bus created")
        return MiddleSizedBus()
    }
    
    func produceCar() -> Car {
        print("Middle car created")
        return MiddleSizedCar()
    }
}

let littleFactory = LittleSizeFactory()
littleFactory.produceCar()

let middleFactory = MiddleSizeFactory()
middleFactory.produceBus()















