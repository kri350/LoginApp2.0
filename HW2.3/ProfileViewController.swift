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
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(userProfile.userName) \(userProfile.userLastname)"
        ageLabel.text = userProfile.userAge
        infoLabel.text = userProfile.userInfo
    }
}
