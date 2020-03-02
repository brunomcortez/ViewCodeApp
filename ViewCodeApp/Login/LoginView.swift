//
//  LoginView.swift
//  ViewCodeApp
//
//  Created by Bruno Cortez on 2/28/20.
//  Copyright © 2020 Bruno Cortez. All rights reserved.
//

import UIKit

// MARK: - Protocol

protocol LoginViewDelegate: class {
    func loginButtonTapped()
    func signupButtonTapped()
    func facebookButtonTapped()
    func googleButtonTapped()
}

class LoginView: UIView {

    // MARK: - Properties
    
    weak var delegate: LoginViewDelegate?
    
    // MARK: - Components
    
    let mainImage: UIImageView = {
       let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "main")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Localization.welcomeText
        label.textAlignment = .center
        label.font = .title
        label.textColor = .title
        return label
    }()
    
    let bodyLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = Localization.mainBody
        label.textAlignment = .center
        label.font = .body
        label.textColor = .body
        label.numberOfLines = 0
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .button
        button.setTitleColor(.mainButtonText, for: .normal)
        button.setTitle(Localization.loginButtonTitle, for: .normal)
        button.layer.cornerRadius = 25
        button.backgroundColor = .mainButton
        button.clipsToBounds = true
        
        return button
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .button
        button.setTitleColor(.secondaryButtonText, for: .normal)
        button.setTitle(Localization.signupButtonTitle, for: .normal)
        button.layer.cornerRadius = 25
        button.backgroundColor = .secondaryButton
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.secondaryButtonBorder.cgColor
        button.clipsToBounds = true
        
        return button
    }()
    
    let buttonsStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        return stackView
    }()
    
    // MARK: - Initialization
    
    init(delegate: LoginViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

// MARK: - Extensions

extension LoginView: CodeView {
    
    func setupComponents() {
        addSubview(mainImage)
        addSubview(titleLabel)
        addSubview(bodyLabel)
        addSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(loginButton)
        buttonsStackView.addArrangedSubview(signupButton)
    }
    
    func setupConstraints() {
        
        // main image
        mainImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Margin.verticalVeryLarge).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        mainImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -Margin.horizontal).isActive = true
        mainImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        
        // title label
        titleLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: Margin.verticalVeryLarge).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -Margin.horizontal).isActive = true
        
        // body label
        bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Margin.verticalNormal).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -Margin.horizontal).isActive = true
        
        // buttons stackView
        buttonsStackView.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: Margin.verticalVeryLarge).isActive = true
        buttonsStackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: .zero).isActive = true

        // login button
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        // signup button
        signupButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupExtraConfiguration() {
        backgroundColor = .background
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        delegate?.loginButtonTapped()
    }
    
    @objc func signupButtonTapped() {
        delegate?.signupButtonTapped()
    }
}
