//
//  LoginScreen.swift
//  view-code-descomplicado
//
//  Created by Michelli Cristina de Paulo Lima on 05/12/22.
//

import UIKit

class LoginScreen: UIView {

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setUpConstraints()
        self.backgroundColor = .red
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension LoginScreen {
    func addSubViews() {
        addSubview(self.loginLabel)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),


        ])
    }
}
