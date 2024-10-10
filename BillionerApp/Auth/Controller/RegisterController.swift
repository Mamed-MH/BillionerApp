//
//  RegisterController.swift
//  BillionerApp
//
//  Created by Mamed Hacıyev on 10.10.2024.
//

import UIKit
final class RegisterController:UIViewController {
    
    @IBOutlet private weak var signUpBtn: UIButton!
    @IBOutlet private weak var loginBtn: UIButton!
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var surnameField: UITextField!
    @IBOutlet private weak var emailField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet weak var bgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    fileprivate func configureUI() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        configureButton()
    }
    
    fileprivate func configureButton() {
        signUpBtn.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        signUpBtn.setTitle("Sign Up", for: .normal)
        loginBtn.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        loginBtn.setTitle("Login", for: .normal)
    }
    
    @objc
    fileprivate func signUpButtonClicked() {
        print(#function)
        
    }
    
    @objc
    fileprivate func loginButtonClicked() {
        print(#function)
        
    }
}
