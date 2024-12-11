//
//  HomeViewController.swift
//  pertin-app
//
//  Created by Gabriel on 11/12/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    private let homeView = HomeView()
    private var places: [Place] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
    }
}
