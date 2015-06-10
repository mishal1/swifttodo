//
//  SignUpViewController.swift
//  to-do
//
//  Created by Mishal Islam on 10/06/2015.
//  Copyright (c) 2015 Mishal. All rights reserved.
//

import UIKit

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
        println("CLICK")
    }
    

}
