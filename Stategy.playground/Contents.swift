//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("Professional swimming")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("non swimming")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionDiver: DiveBehavior {
    func dive() {
        print("Professional diving")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("Newbie diving")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("Not diving")
    }
}

class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        self.swimBehavior = sb
    }
    
    func setDiveBehavior(db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    func run() {
        print("running")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
    
}

let human = Human(swimBehavior: NonSwimmer(), diveBehavior: ProfessionDiver())

human.performDive()

human.performSwim()

human.setSwimBehavior(sb: ProfessionalSwimmer())

human.performSwim()













