//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Alexey Turulin on 8/25/23.
//

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

final class GreetingPresenter: GreetingPresenterProtocol {
    private unowned let view: GreetingViewProtocol
    private let person: Person
    
    init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name), \(person.surname)!"
        view.setGreeting(greeting)
    }
}
