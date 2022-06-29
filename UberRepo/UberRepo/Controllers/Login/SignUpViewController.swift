//
//  SignUpViewController.swift
//  UberRepo
//
//  Created by Anubhav Verma on 23/01/22.
//

import UIKit

class SignUpViewController: UIViewController {
    
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
    
    private lazy var fullNameContainerView: UIView = {
        let view = UIView().inputContainerView(image: UIImage.init(named: "ic_person_outline_white_2x")!, textField: userNameTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var accountTypeContainerView: UIView = {
        let view = UIView()
        
        let label = UILabel()
        
        label.text = "Account Type"
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 6, paddingRight: 6, height: 30)
        
        let segmentView = UISegmentedControl.init(items: ["Rider", "Driver"])
        segmentView.selectedSegmentIndex = 0
        view.addSubview(segmentView)
        segmentView.anchor(top: label.bottomAnchor, bottom: view.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 8, paddingBottom: 8, paddingLeft: 8, paddingRight: 8, height: 34)
        
        return view
    }()
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Enter Email", isSecureText: false)
    }()
    
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Enter Password", isSecureText: true)
    }()
    
    private let userNameTextField: UITextField = {
        return UITextField().textField(withPlaceholder: "Enter Full Name", isSecureText: false)
    }()
    
    private let loginButton: UIButton  = {
        let button =  AuthButton.init(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(signUpButtonAction), for: .touchUpInside)
        return button
    }()
    
    private let signInButton: UIButton  = {
        let button = UIButton.init(type: .system)
        let attributedTitle = NSMutableAttributedString.init(string: "Already have an account?  ", attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.lightGray])
        attributedTitle.append(NSMutableAttributedString.init(string: "Sign In", attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.blueTint]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.addTarget(self, action: #selector(signInButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    
    //MARK: Lifescycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: Selectors
    
    @objc  func signInButtonAction() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func signUpButtonAction() {
        guard let email = emailTextField.text, let password = passwordTextField.text, let userName = userNameTextField.text else { return  }
        
        
    }
    
    //MARK: Helper
    
    private func configureUI() {
        configureNavigationBar()
        
        view.backgroundColor = .backgroundColor
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centreX(inView: view)
        
        let stackView = UIStackView.init(arrangedSubviews: [emailContainerView, fullNameContainerView, passwordContainerView, accountTypeContainerView,  loginButton])
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 24
        stackView.distribution = .fillProportionally
        stackView.centreX(inView: view)
        stackView.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16)
        
        view.addSubview(signInButton)
        signInButton.centreX(inView: view)
        signInButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
    
    private func configureNavigationBar() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.barStyle = .black
    }
    
    
}
