//
//  FirstPageViewController.swift
//  MVCDesignPattern
//
//  Created by Dowon Kim on 04/08/2023.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // When the view is loaded, get the user data(who just logged in ) from the model
        // to do that use the network servie to access and retrieve the logged-in user info
        // and when it has that it's the controller which is going to update the View
        user = NetworkService.shared.getLoggedInUser()
        recogniseUser()
    }
    
    private func recogniseUser() {
        mainLabel.text = "Welcome! \(user.firstName) \(user.lastName)"
    }
    
    
}
