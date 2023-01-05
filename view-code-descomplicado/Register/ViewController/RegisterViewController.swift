//
//  RegisterViewController.swift
//  view-code-descomplicado
//
//  Created by Michelli Cristina de Paulo Lima on 11/12/22.
//

import UIKit

class RegisterViewController: UIViewController {

    var screen: RegisterScreen?

    override func loadView() {
        self.screen = RegisterScreen()
        self.view = self.screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configTextFieldDelegate(delegate: self)
        self.screen?.delegate(delegate: self)
    }

}

extension RegisterViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        self.screen?.validateTextFields()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterViewController: RegisterScreenProtocol {

    func actionRegisterButton() {

    }

}
