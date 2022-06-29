//
//  SignInViewController.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    //MARK: Properties
    
    private  let titleLabel: UILabel = {
        let label = UILabel.init()
        label.text = "UBER"
        label.textColor = UIColor.init(white: 1, alpha: 0.8)
        label.font = UIFont.init(name: "Avenir-Light", size: 36)!
        return label
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = UIView().inputContainerView(image: UIImage.init(named: "ic_mail_outline_white_2x")!, textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = UIView().inputContainerView(image: UIImage.init(named: "ic_lock_outline_white_2x")!, textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Enter Email", isSecureText: false)
    }()
    
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Enter Password", isSecureText: true)
    }()
    
    private let loginButton: AuthButton  = {
        let button =  AuthButton.init(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        return button
    }()
    
    private let signUpButton: UIButton  = {
        let button = UIButton.init(type: .system)
        let attributedTitle = NSMutableAttributedString.init(string: "Don't have an account?  ", attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.lightGray])
        attributedTitle.append(NSMutableAttributedString.init(string: "Sign  Up", attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.blueTint]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(signUpButtonAction), for: .touchUpInside)
        return button
    }()
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: Selectors
    
    @objc func signUpButtonAction() {
        debugPrint("sign up button action")
        let controller = SignUpViewController()
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    //MARK: Helper
    
    private func configureUI() {
        configureNavigationBar()
        view.backgroundColor = .backgroundColor
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centreX(inView: view)
        
        let stackView = UIStackView.init(arrangedSubviews: [emailContainerView, passwordContainerView,  loginButton])
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.distribution = .fillEqually
        stackView.centreX(inView: view)
        stackView.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16)
        view.addSubview(signUpButton)
        signUpButton.centreX(inView: view)
        signUpButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, height: 32)
    }
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
    }
    
}
