//
//  WelcomeViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName!)!"
        
    }
    
    @IBAction func logoutPressed() {
        dismiss(animated: true)
    }
    
   

}
