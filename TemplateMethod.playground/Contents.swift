


protocol DriveVehicle {
    func startVehicle()
    
    func haveASeat()
    func closeTheDoor()
    func useProtection()
    func lookAtTheMirror()
    func turnSignal()
    func driveForward()
}


extension DriveVehicle {
    // template method
    func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("This method should be overriden")
    }
    
    func useProtection() {
        preconditionFailure("This method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("This method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("This method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("This method should be overriden")
    }
    
}

class Bicycle: DriveVehicle {
    func closeTheDoor() {
        
    }
    
    func haveASeat() {
        print("Sit down on a bicycle seat")
    }
    
    func useProtection() {
        print("Used bicycle helmet")
    }
    
    func lookAtTheMirror() {
        print("Looked at the bicycle mirror")
    }
    
    func turnSignal() {
        print("Made a sign by hand")
    }
    
    func driveForward() {
        print("Pedal")
    }
    
}

class Car: DriveVehicle {
    func closeTheDoor() {
        print("Closing door")
    }
    
    func haveASeat() {
        print("Sit down into car")
        closeTheDoor()
    }
    
    func useProtection() {
        print("Fasten seat belt")
    }
    
    func lookAtTheMirror() {
        print("Looked at the car rear mirror")
    }
    
    func turnSignal() {
        print("Turn left turn light")
    }
    
    func driveForward() {
        print("Push Accelerate")
    }
    
}


let bicycle = Bicycle()
bicycle.startVehicle()
print("###############")
let car = Car()
car.startVehicle()






