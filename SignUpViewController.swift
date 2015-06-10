//
//  SignUpViewController.swift
//  to-do
//
//  Created by Mishal Islam on 10/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func signUp() {
        var email = emailField.text
        var query = PFQuery(className:"Users")
        query.whereKey("email", equalTo: email)
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                if objects!.count == 0 {
                    let user = PFObject(className: "Users")
                    user["email"] = email
                    user["password"] = self.passwordField.text
                    user.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
                        println("Object has been saved.")
                    }
                } else {
                    println("Email exists")
                }
                
            }
        }
        
        
    }
    

}
