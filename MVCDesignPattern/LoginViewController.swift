//
//  ViewController.swift
//  MVCDesignPattern
//
//  Created by Dowon Kim on 04/08/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
    }
    
    // lower virtual keyboard when the negative space is clicked.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

