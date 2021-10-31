//
//  Model.swift
//  HW2.3
//
//  Created by Кристина Андреева on 31.10.2021.
//

import Foundation

struct User {
    var userLogin: String
    var userPassword: String
    var profile: [Profile]
}

struct Profile {
    var userName: String
    var userLastname: String
    var userAge: String
    var userInfo: String
}

let user = User (userLogin: "User", userPassword: "Password", profile: [userProfile])
let userProfile = Profile (userName: "Kristina", userLastname: "Andreeva", userAge: "34", userInfo: "Fraud analyst from Kazan")

    


