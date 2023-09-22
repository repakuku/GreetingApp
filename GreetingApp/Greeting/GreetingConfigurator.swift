//
//  GreetingConfigurator.swift
//  GreetingApp
//
//  Created by Alexey Turulin on 9/22/23.
//

import Foundation

protocol GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController)
}

final class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
