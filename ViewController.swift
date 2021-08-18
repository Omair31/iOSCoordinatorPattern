//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by VenD-Omeir on 18/08/2021.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    
    var didBuySubscription: (([String]) -> Void)?
    var didCreateAccount: ((String, String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "ViewController"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyButtonPressed(_ sender: UIButton) {
        didBuySubscription?(["apples", "oranges", "bananas"])
    }
    
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        didCreateAccount?("omeir35","someSecurePassword")
    }
    


}

