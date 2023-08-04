//
//  NetworkService.swift
//  MVCDesignPattern
//
//  Created by Dowon Kim on 04/08/2023.
//

//-------------------------------------------

//🛜
// Network service that checks the values in the email and password fields
// And if it's a certain value, we want to switch the screen(view)

import Foundation

class NetworkService {
    //Let's make it a singleton
    static let shared = NetworkService()
    
    private init() { }
    
    // simulate(act) like our local storage so rather than makein network requests we want to just create a user when we login
    // it is optional bc if it's logged in then it should be nil
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        
        //We're going to jump off the main thread
        DispatchQueue.global().async {
            sleep(2)
            //jump back to the main thread
            DispatchQueue.main.async {
                //Check if the login is successful
                if email == "dummy@test.com" && password == "password" {
                    self.user = User(firstName: "Rick", lastName: "Sanchez", email: "dummy@test.com", age: 70, location: Location(lat: 2.19393, lng: -2.1234))
                    completion(true)
                } else {
                    completion(false)
                }
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
}
