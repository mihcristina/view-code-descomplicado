//
//  LoginViewController.swift
//  view-code-descomplicado
//
//  Created by Michelli Cristina de Paulo Lima on 05/12/22.
//

import UIKit

class LoginViewController: UIViewController {

    var screen: LoginScreen?

    override func loadView() {
        screen = LoginScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.delegate(delegate: self)
        self.screen?.configTextFieldDelegate(delegate: self)
    }

}

extension LoginViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension LoginViewController: LoginScreenProtocol {

    func actionLoginButton() {

    }

    func actionRegisterButton() {
        
    }

}
