//
//  LoginController.swift
//  BillionerApp
//
//  Created by Mamed Hacıyev on 10.10.2024.
//


import UIKit
final class LoginController:UIViewController {
    
    @IBOutlet private weak var signInBtn: UIButton!
    @IBOutlet private weak var SignUpBtn: UIButton!
    @IBOutlet private weak var emailField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet weak var bgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureTextField()
        
    }
    
    fileprivate func configureUI() {
        navigationController?.setNavigationBarHidden(true, animated: true)
        configureButton()
    }
    
    fileprivate func configureButton() {
        signInBtn.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        signInBtn.setTitle("Login", for: .normal)
        SignUpBtn.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        SignUpBtn.setTitle("Sign Up", for: .normal)
    }
    
    @objc
    fileprivate func signUpButtonClicked() {
        getRegisterController()
    }
    
    fileprivate func configureTextField() {
        
        passwordField.delegate = self
        emailField.delegate = self
    }
    
    @objc
    fileprivate func signInButtonClicked() {
        getRegisterController()
        
    }
    
    fileprivate func getRegisterController(){
        
        let controller = UIStoryboard.init(name: "Auth", bundle: Bundle.main).instantiateViewController(identifier: "RegisterController") as? RegisterController ?? RegisterController()
        navigationController?.pushViewController(controller, animated: true)
    }
}

extension LoginController:UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        
        guard let text = textField.text else {return}
        print(#function, text)
    }
}
