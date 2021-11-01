//
//  ProfileViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 31.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameLabel.text = "\(user.profile.userName) \(user.profile.userLastname)"
        ageLabel.text = user.profile.userAge
        infoLabel.text = user.profile.userInfo
    }
}
