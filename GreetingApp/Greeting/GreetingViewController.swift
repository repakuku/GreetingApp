//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Alexey Turulin on 9/28/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol GreetingDisplayLogic: AnyObject {
    func displayGreeting(viewModel: GreetingViewModel)
}

final class GreetingViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
        
    var interactor: GreetingBusinessLogic?
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingConfigurator.shared.configure(with: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let request = GreetingRequest()
        interactor?.showGreeting(request: request)
    }
}

extension GreetingViewController: GreetingDisplayLogic {
    func displayGreeting(viewModel: GreetingViewModel) {
        greetingLabel.text = viewModel.greeting
    }
}
