//
//  TaskViewController.swift
//  HW2.3
//
//  Created by Кристина Андреева on 31.10.2021.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var taskLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        taskLabel.text = userOne.taskList.rawValue
    }
}
