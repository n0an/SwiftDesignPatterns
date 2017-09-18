//: Playground - noun: a place where people can play

import UIKit


protocol Command {
    var isComplete: Bool {get set}
    func execute()
}


class Account {
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
}

class Deposit: Command {
    
    private var _account: Account
    private var _amount: Int
    
    var isComplete = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        _account.balance += _amount
        isComplete = true
    }
}

class Withdraw: Command {
    
    private var _account: Account
    private var _amount: Int
    
    var isComplete = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        if _account.balance >= _amount {
            _account.balance -= _amount
            isComplete = true
        } else {
            print("Not sufficient funds")
            isComplete = false
        }
    }
}


class TransactionManager {
    
    static let sharedManager = TransactionManager()
    
    private init() {}
    
    private var _transactions: [Command] = []
    var pendingTransactions: [Command] {
        get {
            return self._transactions.filter{ $0.isComplete == false }
        }
    }
    
    func addTransactions(command: Command) {
        self._transactions.append(command)
    }
    
    func processingTransactions() {
        _transactions.filter{ $0.isComplete == false }.forEach{ $0.execute() }
    }
}


let account = Account(accountName: "checking", balance: 1000)

let transactionManager = TransactionManager.sharedManager

transactionManager.addTransactions(command: Deposit(account: account, amount: 100))
transactionManager.addTransactions(command: Withdraw(account: account, amount: 500))
transactionManager.pendingTransactions
account.balance
transactionManager.processingTransactions()
account.balance









