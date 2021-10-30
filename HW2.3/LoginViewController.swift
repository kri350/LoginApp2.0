//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 27.10.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userNameValue = "Nikita"
    private let passwordValue = "1234"
    

    @IBAction func loginButtonPressed() {
        guard userNameTF.text == userNameValue, passwordTF.text == passwordValue
        else {
            showAlert(title: "Invalid login or password", message: "Please try again", textField: passwordTF)
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
                userNameTF.text = ""
                passwordTF.text = ""
            }
    
        private func showAlert (title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
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
            if textField == userNameTF {
                passwordTF.becomeFirstResponder()
            } else {
                loginButtonPressed()
                performSegue(withIdentifier: "showWelcomeVC", sender: nil)
            }
            return true
        }
}
