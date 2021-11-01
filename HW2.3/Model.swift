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
    var profile: Profile
    var taskList: Tasks
    
    static func getUser() -> User {
        User(userLogin: "User", userPassword: "1234", profile: Profile.getProfile(), taskList: Tasks.one)
    }
}

struct Profile {
    var userName: String
    var userLastname: String
    var userAge: String
    var userInfo: String
    
    static func getProfile() -> Profile {
        Profile(userName: "Kristina", userLastname: "Andreeva", userAge: "34", userInfo: "Fraud analyst from Kazan")
    }
}
enum Tasks: String {
        case one = "Learn Swift"
        case two = "Learn JAVA"
    }
