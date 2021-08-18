//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by VenD-Omeir on 18/08/2021.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ViewController"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyButtonPressed(_ sender: UIButton) {
        coordinator?.buy(items: ["apples", "oranges", "bananas"])
    }
    
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        coordinator?.createAccount(username: "omeir35", password: "someSecurePassword")
    }
    


}

