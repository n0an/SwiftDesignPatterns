//: Playground - noun: a place where people can play

import UIKit


protocol Vehicle {
    func drive()
}

class Car: Vehicle {
    func drive() {
        print("Driving a car")
    }
}

class Truck: Vehicle {
    func drive() {
        print("Driving a truck")
    }
}

class Bus: Vehicle {
    func drive() {
        print("Driving a bus")
    }
}

protocol VehicleFactory {
    func produce() -> Vehicle
}

class CarFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Car is created")
        return Car()
    }
}

class TruckFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Truck is created")
        return Truck()
    }
}

class BusFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Bus is created")
        return Bus()
    }
}


let carFactory = CarFactory()
let car = carFactory.produce()
car.drive()

let truckFactory = TruckFactory()
let truck = truckFactory.produce()
truck.drive()

let busFactory = BusFactory()
let bus = busFactory.produce()
bus.drive()













