//
//  AppCoordinator.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/16.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

protocol Coordinatable {
    func start()
}

internal final class AppCoordinator: Coordinatable {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
