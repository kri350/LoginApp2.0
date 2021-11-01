//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 27.10.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userLoginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    @IBAction func loginButtonPressed() {
        guard userLoginTF.text == user.userLogin, passwordTF.text == user.userPassword
        else {
            showAlert(title: "Invalid login or password", message: "Please try again", textField: passwordTF)
        return
        }
    }
    @IBAction func userNameHint() {
        showAlert(title: "Hint", message: "\(user.userLogin)")
    }
    @IBAction func passwordHint() {
        showAlert(title: "Hint", message: "\(user.userPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
                userLoginTF.text = ""
                passwordTF.text = ""
            }
    func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
                view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            if textField == userLoginTF {
                passwordTF.becomeFirstResponder()
            } else {
                loginButtonPressed()
                performSegue(withIdentifier: "showWelcomeVC", sender: nil)
            }
            return true
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let tabBarControllers = tabBarController.viewControllers else {return}
    for viewController in tabBarControllers {
        if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
        } else if let taskVC = viewController as? TaskViewController {
                taskVC.user = user
        } else if let navigationVC = viewController as? UINavigationController {
                let profileVC = navigationVC.topViewController as! ProfileViewController
                profileVC.user = user }
        }
    }
}
