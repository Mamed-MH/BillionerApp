//
//  GetStartedController.swift
//  BillionerApp
//
//  Created by Mamed Hacıyev on 7.10.2024.
//

import UIKit
final class GetStartedController:UIViewController {
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var bgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButton()
        
    }
    
    fileprivate func configureButton() {
        submitButton.addTarget(self, action: #selector(submitButtonClicked), for: .touchUpInside)
        submitButton.setTitle("Get Started", for: .normal)
    }
    
    fileprivate func configureUI() {
        
    }
    
    @objc
    fileprivate func submitButtonClicked() {
        getRegisterController()
        
    }
    
    fileprivate func getRegisterController(){
        
        let controller = UIStoryboard.init(name: "Auth", bundle: Bundle.main).instantiateViewController(identifier: "RegisterController") as? RegisterController ?? RegisterController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
