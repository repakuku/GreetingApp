//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Alexey Turulin on 9/22/23.
//

import Foundation

struct GreetingData {
    let name: String
    let surname: String
}

final class GreetingPresenter: GreetingViewOutputProtocol {
    unowned private let view: GreetingViewInputProtocol
    var interactor: GreetingInteractorInputProtocol!

    init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

// MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) \(greetingData.surname)!"
        view.setGreeting(greeting)
    }
}
