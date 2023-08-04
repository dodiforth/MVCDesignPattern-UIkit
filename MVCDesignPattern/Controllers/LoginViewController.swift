//
//  ViewController.swift
//  MVCDesignPattern
//
//  Created by Dowon Kim on 04/08/2023.
//

/*
 
 Idea of this project :
 When you login is successful, it will take you to the successful screen
 (in this case FirstPageViewController)
 
 Think of this controller as itself literally "controller"
 Because this is where all of logics for how the View is going to be updated on,
 how data is going to be gotten, and how it is going to be present.
 -> Control the flow of the application
 */

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    /* This loginButton is to simulate a network request */
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // add listeners to both the email and the password fields.
        // 👇 whenever the value of the email field changes is going to trigger the function "validateFields"
        emailField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        // 👆

    }
    
    // Set the LoginButton to be enabled or not
    @objc private func validateFields() {
        loginButton.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!) { success in
            if success {
                self.goToFirstPage()
            } else {
                print("Error occurred. User cannot be found")
            }
        }
    }
    
    private func goToFirstPage() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "FirstPageViewController") as! FirstPageViewController
        present(controller, animated: true, completion: nil)
    }
    
    // lower(resign) virtual keyboard when the negative space is clicked.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

