//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by VenD-Omeir on 18/08/2021.
//

import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    
    func start()
    
    func buy(items: [String])
    
    func createAccount(username: String, password: String)
}
