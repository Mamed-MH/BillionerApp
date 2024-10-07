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
    }
    
    @objc
    fileprivate func submitButtonClicked() {
        print(#function)
        
    }
}
