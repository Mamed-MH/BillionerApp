//
//  RegisterController.swift
//  BillionerApp
//
//  Created by Mamed Hacıyev on 10.10.2024.
//

import UIKit

protocol RegisterControllerDelegate:AnyObject {
    
    func didFinish(user:User)
}

final class RegisterController:UIViewController {
    
    @IBOutlet private weak var signUpBtn: UIButton!
    @IBOutlet private weak var loginBtn: UIButton!
    @IBOutlet private weak var nameField: UITextField!
    @IBOutlet private weak var surnameField: UITextField!
    @IBOutlet private weak var emailField: UITextField!
    @IBOutlet private weak var passwordField: UITextField!
    @IBOutlet weak var bgImage: UIImageView!
    private var user:User?
    weak var deleagate:RegisterControllerDelegate?
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
        
        guard checkValidation() else {
            print(#function, "Field cannot be empty")
            return
        }
        guard let name = nameField.text,
              let surname = surnameField.text,
              let email = emailField.text,
              let password = passwordField.text else {return}
        
        user = User(name: name, surname: surname, email: email, password: password)
        guard let user else {return}
        deleagate?.didFinish(user: user)
        
        
    }
    
    fileprivate func checkValidation() -> Bool {
        guard let name = nameField.text,
              let surname = surnameField.text,
              let email = emailField.text,
              let password = passwordField.text else {return false}
        
        return !(name.isEmpty || surname.isEmpty || email.isEmpty || password.isEmpty)
    }
    
    @objc
    fileprivate func loginButtonClicked() {

        let controller = UIStoryboard.init(name: "Auth", bundle: Bundle.main).instantiateViewController(identifier: "LoginController") as? LoginController ?? LoginController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
