//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 27.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userNameValue = "Nikita"
    let passwordValue = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginButtonPressed() {
        guard userNameTF.text == userNameValue, passwordTF.text == passwordValue
        else {
            showAlert(title: "Invalid Username or Password", message: "Please try again")
        return
        }
    }
    
    @IBAction func userNameHint() {
        showAlert(title: "Hint", message: "Nikita")
    }
    
    @IBAction func passwordHint() {
        showAlert(title: "Hint", message: "1234")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
               welcomeVC.userName = userNameTF.text
           }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
                userNameTF.text = ""
                passwordTF.text = ""
            }
    
    func showAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
            }
    
    
}
