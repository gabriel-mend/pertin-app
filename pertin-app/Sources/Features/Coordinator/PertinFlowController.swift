//
//  PertinCoodinatorController.swift
//  pertin-app
//
//  Created by Gabriel on 10/12/24.
//

import Foundation
import UIKit

class PertinFlowController {
    private var navigationController: UINavigationController?
    
    init() {}
    
    
    // expondo a variavel da navegação para utilizar no SceneDelegate
    func start() -> UINavigationController? {
        let contentView = HomeView()
        let startViewController = HomeViewController()
        
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }    
}

extension PertinFlowController: SplashFlowDelegate {
    func decideNavigationFlow() {
        let contentView = WelcomeView()
        let welcomeViewController = WelcomeViewController(contentView: contentView)
        
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}

