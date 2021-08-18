//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by VenD-Omeir on 18/08/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.didBuySubscription = { [weak self] items in
            self?.buy(items: items)
        }
        
        vc.didCreateAccount = { [weak self] name, password in
            self?.createAccount(username: name, password: password)
        }
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buy(items: [String]) {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount(username: String, password: String) {
        let vc = CreateAccountController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
