//
//  ViewController.swift
//  IMMApp
//
//  Created by Андрей Дютин on 12.08.2020.
//  Copyright © 2020 Андрей Дютин. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    private var authService: AuthService!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authService = SceneDelegate.shared().authService
        view.backgroundColor = .red
    }

    @IBAction func signInVk(_ sender: UIButton) {
        authService.wakeUpSession()
    }
    
}

