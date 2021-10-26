//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 27.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
               welcomeVC.userName = userNameTF.text
           }
    

}
