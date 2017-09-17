//: Playground - noun: a place where people can play

import UIKit

protocol Subject {
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notify(withString: String)
}

class Teacher: Subject {
    
    var observerCollection = NSMutableSet()
    var homeTask = "" {
        didSet {
            notify(withString: homeTask)
        }
    }
    
    func add(observer: PropertyObserver) {
        observerCollection.add(observer)
    }
    
    func remove(observer: PropertyObserver) {
        observerCollection.remove(observer)
    }
    
    func notify(withString string: String) {
        for observer in observerCollection {
            (observer as! PropertyObserver).didGet(newTask: string)
        }
    }
    
}

protocol PropertyObserver {
    func didGet(newTask task: String)
}



class Pupil: NSObject, PropertyObserver {
    var homeTask = ""
    
    func didGet(newTask task: String) {
        homeTask = task
        print("New homework to be done: \(homeTask)")
    }
}

let teacher = Teacher()
let pupil = Pupil()

teacher.add(observer: pupil)
teacher.homeTask = "calculate 2+2"

pupil.homeTask








