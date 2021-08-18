//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by VenD-Omeir on 18/08/2021.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start() 
}
