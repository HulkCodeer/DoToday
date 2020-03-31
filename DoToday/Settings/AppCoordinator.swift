//
//  AppCoordinator.swift
//  DoToday
//
//  Created by 박현진 on 2020/03/16.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit

protocol Coordinatable {
    func startMain()
}

internal final class AppCoordinator: Coordinatable {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationBar.isHidden = true
    }
    
    func startMain() {
        let vc = MainViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
    
    func startAddItem() {
        let vc = InsertViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
}
