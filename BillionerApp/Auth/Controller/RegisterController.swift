//
//  RegisterController.swift
//  BillionerApp
//
//  Created by Mamed Hacıyev on 10.10.2024.
//

import UIKit
final class RegisterController:UIViewController {
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var bgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton()
        
    }
    
    fileprivate func configureButton() {
        submitButton.addTarget(self, action: #selector(submitButtonClicked), for: .touchUpInside)
    }
    
    @objc
    fileprivate func submitButtonClicked() {
        print(#function)
        
    }
}
