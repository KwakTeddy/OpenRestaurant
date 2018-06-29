//
//  SignUpVC.swift
//  Open_Restaurant
//
//  Created by Teddy on 2018. 6. 27..
//  Copyright © 2018년 Teddy. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignUpVC: UIViewController {
    
    @IBOutlet weak var nickNameTxtField: SkyFloatingLabelTextFieldWithIcon!
    
    @IBOutlet weak var emailTxtField: SkyFloatingLabelTextFieldWithIcon!
    
    @IBOutlet weak var passwordTxtField: SkyFloatingLabelTextFieldWithIcon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTxtField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBtnTapped(_ sender: Any) {
        
        
        
        
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        }
    }
    
    

}

extension SignUpVC: UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            if let floatingLabelTextField = textField as? SkyFloatingLabelTextField {
                if (text.count < 3 || !text.contains("@")) {
                    floatingLabelTextField.errorMessage = "Invalid email"
                } else {
                    // The error message will only disappear when we reset it to nil or empty string
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
        return true
    }
}
