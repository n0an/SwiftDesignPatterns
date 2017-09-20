

protocol State {
    func on(printer: Printer)
    func off(printer: Printer)
    func printDocument(printer: Printer)

}

class On: State {
    func on(printer: Printer) {
        print("It is on already")
    }
    
    func off(printer: Printer) {
        print("Turning off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("Printing")
        printer.set(state: Print())
    }
}

class Off: State {
    func on(printer: Printer) {
        print("Turning on")
        printer.set(state: On())
    }
    
    func off(printer: Printer) {
        print("Already turned off")
    }
    
    func printDocument(printer: Printer) {
        print("Can't print - turned off")
    }
}

class Print: State {
    func on(printer: Printer) {
        print("It is on already and printing")
    }
    
    func off(printer: Printer) {
        print("Turning off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("It's already printing")
    }
}

class Printer {
    
    var state: State
    
    init() {
        self.state = On()
    }
    
    func set(state: State) {
        self.state = state
    }
    
    func turnOn() {
        self.state.on(printer: self)
    }
    
    func turnOff() {
        self.state.off(printer: self)
    }
    
    func printDocument() {
        self.state.printDocument(printer: self)
    }
}


let printer = Printer()

printer.printDocument()

printer.turnOff()

printer.printDocument()

printer.turnOn()

printer.turnOn()






