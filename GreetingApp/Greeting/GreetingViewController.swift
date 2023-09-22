//
//  ViewController.swift
//  GreetingApp
//
//  Created by Alexey Turulin on 8/25/23.
//

import UIKit

protocol GreetingViewInputProtocol {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreetingButton()
}

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
    
}

// MARK: - GreetingViewInputProtocol
extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
