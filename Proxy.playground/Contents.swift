
// *********************************
// Virtual proxy
/*
class User {
    let id = "123"
    
}

protocol ServerProtocol {
    func grantAccess(user: User)
    func denyAccess(user: User)
}


class ServerSide: ServerProtocol {
    
    func grantAccess(user: User) {
        print("Access granted tu user with id \(user.id)")
    }
    
    func denyAccess(user: User) {
        print("Access denied tu user with id \(user.id)")
    }
}


class ServerProxy: ServerProtocol {
    
    lazy private var server = ServerSide()
    
    func grantAccess(user: User) {
        server.grantAccess(user: user)
    }
    
    func denyAccess(user: User) {
        server.denyAccess(user: user)
    }
}

let user = User()

let proxy = ServerProxy()

proxy.grantAccess(user: user)
proxy.denyAccess(user: user)
*/

// *********************************
// Secure proxy

class User {
    let name = "Petr"
    let password = "123"
}

protocol ServerProtocol {
    func grantAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grantAccess(user: User) {
        print("Access granted tu user with id \(user.name)")
    }
}

class ServerProxy: ServerProtocol {
    
    private var server: ServerSide!
    
    func grantAccess(user: User) {
        guard server != nil else {
            print("Access can't be granted")
            return
        }
        
        server.grantAccess(user: user)
    }
    
    func authenticate(user: User) {
        guard user.password == "123" else {
            return
        }
        
        print("User authenticated")
        
        server = ServerSide()
    }
}

let user = User()
let proxy = ServerProxy()

proxy.grantAccess(user: user)
proxy.authenticate(user: user)
proxy.grantAccess(user: user)








