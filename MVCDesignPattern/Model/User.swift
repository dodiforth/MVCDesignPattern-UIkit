//
//  User.swift
//  MVCDesignPattern
//
//  Created by Dowon Kim on 04/08/2023.
//

import Foundation

struct User {
    let firstName, lastName, email: String
    let age: Int
    let location: Location
}

struct Location {
    let lat: Double
    let lng: Double
}
