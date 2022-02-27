//
//  EditProfile.swift
//  Enkaz
//
//  Created by NEW on 7/18/19.
//  Copyright © 2019 Anas. All rights reserved.
//

import UIKit

class EditProfile: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var typeOfUserLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    
    var passwordIsHidden : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "تعديل الملف"
        navigationItem.backButtonTitle = ""
        
        emailTextField.setPadding()
        phoneNumberTextField.setPadding()
        passwordTextField.setPadding()
        
self.profileImage.layer.cornerRadius = (self.profileImage.frame.size.height)/2.0
        self.profileImage.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func editUserProfileBtnPressed(_ sender: Any) {
    saveBtn.isHidden = false
    emailTextField.isEnabled = true
    phoneNumberTextField.isEnabled = true
    passwordTextField.isEnabled = true
        
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        let providedEmailAddress = emailTextField.text
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        
        if isEmailAddressValid
        {
            print("Email address is valid")
            
            saveBtn.isHidden = true
            emailTextField.isEnabled = false
            phoneNumberTextField.isEnabled = false
            passwordTextField.isEnabled = false
        }
        
        else {
            print("Email address is not valid")
            displayAlertMessage(messageToDisplay: "Email address is not valid")
        }
        
        
    }
    

    
    @IBAction func showPasswordBtnPressed(_ sender: Any) {        if passwordIsHidden == true {
        passwordIsHidden = false
        passwordTextField.isSecureTextEntry = false
        }
           else {
          passwordIsHidden = true
          passwordTextField.isSecureTextEntry = true
                }
    }
    
    
    
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
            
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
    }
    
    
}

    
    


