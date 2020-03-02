//
//  LoginViewController.swift
//  ViewCodeApp
//
//  Created by Bruno Cortez on 2/28/20.
//  Copyright © 2020 Bruno Cortez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view = LoginView(delegate: self)
    }
    
    

}

extension LoginViewController: LoginViewDelegate {
    
    func loginButtonTapped() {
        
    }
    
    func signupButtonTapped() {
        
    }
    
    func facebookButtonTapped() {
        
    }
    
    func googleButtonTapped() {
        
    }
}
